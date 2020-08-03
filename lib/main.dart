//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:the_movies/models/coming_soon.dart';
//import 'package:the_movies/screens/home_screen.dart';
import 'package:the_movies/screens/detail_movie_screen.dart';
import 'package:the_movies/screens/nav_screen.dart';
import 'package:the_movies/screens/movie_screen.dart';
import 'package:the_movies/screens/coming_soon_screen.dart';
import 'package:provider/provider.dart';
import 'package:the_movies/providers/movie_provider.dart';
import 'package:the_movies/providers/coming_soon_provider.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'The Movie', 
     home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
       
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      /*
      providers: [
        ChangeNotifierProvider(builder: (context)=>ComingSoonProvider()),
        ChangeNotifierProvider(builder: (context)=>MovieProvider()),        
      ],
      */
      providers: [
        ChangeNotifierProvider.value(value: MovieProvider()),
        ChangeNotifierProvider.value(value: ComingSoonProvider()),
      ],      
    // 1 provider
    //return ChangeNotifierProvider(
    //      builder: (context) =>MovieProvider(),
          child: MaterialApp(
            title: 'SuperMovie',
            debugShowCheckedModeBanner: false,
            //theme: ThemeData.dark(),
                theme: ThemeData(
                    primarySwatch: Colors.red,
                    accentColor: Colors.amberAccent,
                    canvasColor: Colors.white,
                    fontFamily: 'Raleway',
                    textTheme: ThemeData.light().textTheme.copyWith(
                        body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                        body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                        subtitle: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold,
                        ))),
            //title:'SuperMovies',
            //initialRoute: '/',
            routes: {
              //'/' : (context)=>HomeScreen(),
              '/' : (context)=>NavScreen(),
              '/detail-movie':(context) => DetailMovieScreen(),
              '/movie':(context) => MovieScreen(),
              '/comingsoon' : (context) => ComingSoonScreen(),
            },
          ),
    );
    //NavScreen();
  }


}

  


  