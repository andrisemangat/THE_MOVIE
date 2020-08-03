//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;
import 'package:the_movies/widgets/add_qty_modal.dart';
import 'package:the_movies/providers/movie_provider.dart';

class DetailMovieScreen extends StatelessWidget {
/*   final String id_movie;
   final String nama_movie;
   final String description_movie;
   final String picture_movie;
   final String rating_movie;
   final double harga_movie;

   DetailMovieScreen(
     this.id_movie, this.nama_movie, this.description_movie, this.picture_movie, this.rating_movie, this.harga_movie
   );*/


  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context).settings.arguments as String;
    final loadMovie = Provider.of<MovieProvider>(context, listen: false).findById(movieId);
    return Scaffold(
      appBar: AppBar(
        title:Text('Detail Movie'),
      ),
      body:Stack(
        fit: StackFit.expand,
        children:<Widget>[          
           Image.asset(loadMovie.imageUrl, fit: BoxFit.cover,),
           BackdropFilter(
             filter: ui.ImageFilter.blur(sigmaX:5.0, sigmaY: 5.0),
             child: Container(
               color: Colors.black.withOpacity(0.5),
             ),
           ),
           SingleChildScrollView(
              child: Container(
               margin: EdgeInsets.all(20.0),
               child: Column(
                 children: <Widget>[
                   Container(
                     alignment: Alignment.center,
                     child: Container(
                       width: 400,
                       height: 400,
                       ),
                       decoration: BoxDecoration(
                         borderRadius : BorderRadius.circular(20.0),
                         image: DecorationImage(image: AssetImage(loadMovie.imageUrl),
                                               fit: BoxFit.cover,
                                               ),
                         boxShadow: [BoxShadow
                                      (color: Colors.blue,
                                               blurRadius: 20.0,
                                               offset: Offset(0.0, 10.0),
                                       )
                                    ],
                       ),

                     //),

                   ),
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                     child: Row(
                       children: <Widget>[
                         Expanded(
                           child: Text(
                             loadMovie.title,
                             style: TextStyle(color: Colors.white, fontSize: 30.0),
                             )
                         ),
                         Text(
                           '${loadMovie.rating} /10',
                           style: TextStyle(color: Colors.white, fontSize: 20.0),
                         ),
                       ],
                       
                     ),
                   ),
                   Text(
                     'Rp ${loadMovie.price}',
                     style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20.0),
                   ),
                   Padding(padding : EdgeInsets.all(5.0)),
                   Text(
                     '${loadMovie.description}',
                     style: TextStyle(color: Colors.white, fontSize: 20.0),
                   ),
                   Padding(padding : EdgeInsets.all(5.0)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       FlatButton(child: 
                            Text('Kembali ke List Movis', 
                            style: TextStyle(color: Theme.of(context).accentColor),
                            ),
                            onPressed: () {
                          Navigator.pop(context);
                        },
                        ),
                        
                       RaisedButton(
                         color: const Color(0xaa3C3261),
                         child: Text(
                          'Add To Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                        //onPressed: (){}
                        onPressed: (){
                          showModalBottomSheet(
                            context: context, 
                            builder: (context) => AddQtyModal());
                        },
                       ),


                     ],
                   ),

                 ],
               ),
             ),
           ),
        ],
      ),
    );
  }
}