import 'package:flutter/material.dart';
import 'package:the_movies/screens/detail_movie_screen.dart';
import 'package:the_movies/screens/movie_screen.dart';

BuildListTile(String title, IconData icon, Function tapHandler) {
  return ListTile(
    title: Text(
      title,
    ),
    leading: Icon(
      icon,
      size: 24.0,
    ),
    onTap: tapHandler,
  );
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
               decoration: BoxDecoration(color:Colors.green),
               accountName: Text('Andri Duwi Purnomo', style:TextStyle(color : Colors.black),), 
               accountEmail: Text('andrisemangat@yahoo.co.id', style: TextStyle(color:Colors.black),),
               currentAccountPicture: GestureDetector(
                   child : CircleAvatar(backgroundColor: Colors.white, child: Icon(Icons.person, color:Colors.red),),
                   onTap: () {debugPrint('cek');},
                   )
            ),
            /*BuildListTile('Detail Movie',Icons.home,(){
                 //debugPrint('home 1');
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailMovieScreen()));
                 //Navigator.pop(context);
               }),*/
            Divider(
              color: Colors.red,
              height: 10,
            ),
            BuildListTile('List Movie',Icons.home,(){
                 Navigator.pushNamed(context, '/movie');
                 //Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieScreen()));
                 //debugPrint('home 2');
                 //Navigator.pop(context);
               }),
            Divider(
              color: Colors.red,
              height: 10,
            ),
            BuildListTile('Home',Icons.home,(){
                 debugPrint('home 3');
                 Navigator.pop(context);
               }),


                                 
          ],
        ),
      );
  }
}

