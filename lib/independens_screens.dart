import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/contentScroll.dart';
import 'package:netflix/modullar.dart';

class MoviesScreen extends StatefulWidget {
  final Netflix movie;
  MoviesScreen({this.movie});
  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}
class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  // BoxShadow(
                  //     offset: Offset(0, 2),
                  //     color: Colors.black54,
                  //     blurRadius: 2.0)
                ]),
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Hero(
                  tag: widget.movie.imgUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(120.0),
                      bottomLeft: Radius.circular(120.0),
                    ),
                    child: Image(
                      height: 400.0,
                      width: double.infinity,
                      image: AssetImage(widget.movie.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context)),
                  Image(
                    height: 60.0,

                    image: AssetImage('assets/red.png'),
                    fit: BoxFit.cover,
                  ),
                  IconButton(
                      icon: Icon(Icons.favorite),
                      color: Colors.red[800],
                      onPressed: () => print('print')),
                ],
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black)
                  ]),
                  child: RawMaterialButton(
                    elevation: 12.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.red[800],
                      size: 60.0,
                    ),
                  ),
                ),
              )),
              Positioned(
                  bottom: 0.0,
                  left: 10.0,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => print('print'),
                    color: Colors.black,
                    iconSize: 30.0,
                  )),
              Positioned(
                  bottom: 0.0,
                  right: 10.0,
                  child: IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () => print('print'),
                    color: Colors.black,
                    iconSize: 30.0,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${widget.movie.title}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${widget.movie.category}',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '⭐ ⭐ ⭐ ⭐',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Mamlakat',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '${widget.movie.country}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Yil',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '${widget.movie.year}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Film vaqti',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '${widget.movie.length}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 120.0,
                  child: SingleChildScrollView(
                      child: Text(
                    '${widget.movie.description}',
                  )),
                ),
                ContentScroll(
                  images:widget.movie.screenshots,
                  title: "Qisqa Lavhalar",
                  imagesHeight: 200.0,
                  imagesWidht: 250.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
