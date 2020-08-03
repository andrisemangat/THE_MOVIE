import 'package:flutter/material.dart';

class MovieMenuList extends StatelessWidget {
  final String title;
  final List<String> movieImages;
  final Function lihatSemua;
  //final Function lihatSemua;

  MovieMenuList(
      {@required this.title, @required this.movieImages, this.lihatSemua});


  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      children: <Widget>[
        Container(
          height: 230.0,
          color: Colors.black,
          child: Column(            
            children: <Widget>[
              Row(                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(child: 
                        Text(title, style: TextStyle(color:Colors.white),
                          ),
                        onTap: (){debugPrint('cek');},
                            ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                           child: Text('Lihat Semua', 
                         style: Theme.of(context).textTheme.subtitle, //TextStyle(color:Colors.white, fontSize: 20.0),
                         ),
                         //onTap:() {lihatSemua();},
                         onTap:() {lihatSemua();},
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 190,
                    color: Colors.white,
                    /*child: ListView(
                      scrollDirection: Axis.horizontal,
                       children:<Widget>[
                         Padding(
                           padding: EdgeInsets.all(8),
                           child: Text('1'),
                         ),

                       ],

                     
                    ),*/
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: movieImages.length,
                      itemBuilder: (BuildContext context, index){
                        return GestureDetector(
                            child: Container(
                            width: 140.0,
                            child: Card(
                              child: Image.asset(movieImages[index],
                              fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          onTap: (){debugPrint('cek = $index');},
                        );
                      },

                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );

  }
}

