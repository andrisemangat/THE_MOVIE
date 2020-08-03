import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_movies/models/coming_soon.dart';

class ComingSoonCell extends StatelessWidget {
  //final String id;
  //final String title;
  //final String description;
  //final String imageUrl;
 
 //ini hnaya untuk model
  //ComingSoonCell(this.id, this.title, this.description, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final comingsoon = Provider.of<ComingSoon>(context);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            //Text('$title'),
            //Text('$imageUrl'),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Container(
                width: 70,
                height: 70,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), 
                color: Colors.grey,
                image: DecorationImage(                  
                  image: AssetImage(comingsoon.imageUrl),
                  //dr model
                  //image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff3C3261),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: 
              Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[                    
                    Text(comingsoon.title,style: TextStyle(
                    //untuk model
                    //Text(title,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3C3261)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                    ),
                    Text(
                      comingsoon.description,
                      maxLines: 3,
                      style: TextStyle(color: Color(0xff3C3261)),),
                  ],
                ),

              )
              ),
          ],
        ),
        Container(
          height: 0.5,
          width: 400,
          margin: EdgeInsets.all(10),
          color: Colors.black//Color(0xD2D2E1ff),
        ),        
      ],
    );
  }
}