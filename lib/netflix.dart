import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/contentScroll.dart';
import 'package:netflix/independens_screens.dart';
import 'package:netflix/modullar.dart';

class Netflix extends StatefulWidget {
  @override
  _NetflixState createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>MoviesScreen(movie: movies[index],))
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                     tag: movies[index].imgUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(movies[index].imgUrl),
                        height: 220.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  movies[index].title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage(
            'assets/red2.png',
          ),
          fit: BoxFit.cover,
        ),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: IconButton(
              onPressed: () => print('print'),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () => print('print')),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return movieSelector(index);
              },
            ),
          ),
          Container(
            height: 70.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: labels.length,
                itemBuilder: (BuildContext contex, int index) {
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    width: 140.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFD45253),
                            Color(0xFF9E1F28),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black54,
                            blurRadius: 6.0,
                          )
                        ]),
                    child: Center(
                        child: Text(
                      '${labels[index]}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          letterSpacing: 1.8),
                    )),
                  );
                }),
          ),
          SizedBox(
         height: 20.0,
          ),
          ContentScroll(
            images:Mylist,
            title: 'Men yoqtirgan filmlar',
            imagesHeight: 250.0,
            imagesWidht: 150.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          ContentScroll(
            images:popular,
            title: 'Top Filmlar',
            imagesHeight: 250.0,
            imagesWidht: 130.0,
          ),
        ],
      ),
    );
  }
}
