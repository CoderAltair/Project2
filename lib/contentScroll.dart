import 'package:flutter/material.dart';
import 'package:netflix/modullar.dart';
class ContentScroll extends StatelessWidget {
  @override
  final List<String>images;
  final String title;
  final double imagesHeight;
  final double imagesWidht;
  ContentScroll({
    this.images,
    this.title,
    this.imagesHeight,
    this.imagesWidht
});
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style:TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),),

              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: ()=>print('${title}')),
            ],
          ),
        ),
        Container(
          height: imagesHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: Mylist.length,
              itemBuilder: (BuildContext context,int index){
              return  Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    offset: Offset(0,2),
                    blurRadius: 6.0,
                    color: Colors.black54,
                  )]
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                width: imagesWidht,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:Image(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
              }),
        )
      ],
    );
  }
}
