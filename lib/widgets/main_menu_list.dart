import 'package:flutter/material.dart';
import 'package:the_movies/models/kategori.dart';

class MainMenuList extends StatelessWidget {
   //final List<Map<String, String>> menuItems;

    //MainMenuList({@required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(17, 14, 17, 14),
        crossAxisCount: 5,
        //children: List.generate(menuItems.length, (index) 
        children: List.generate(kategoriList.length, (index) 
        {
          return Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                    debugPrint(kategoriList[index].id); 
                    Navigator.of(context).pushNamed('/movie',
                      arguments: {
                        'id':kategoriList[index].id,
                        'kategori':kategoriList[index].kategori});
                    },
              child: Container(
                  height: 45.5,
                  width: 45.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    border: Border.all(color: Colors.green[300]),
                  ),
                  child: Center(
                    //child: Image.asset(menuItems[index]['image']),
                    child: Image.asset(kategoriList[index].image),
                  ),                
                ),



              ),
              Expanded(child: 
                 Text(kategoriList[index].kategori, textAlign: TextAlign.center,
                    style: TextStyle(fontSize:10.0),),),
            ],
          );
        }),

        ),
  );
      
    
  }
}

