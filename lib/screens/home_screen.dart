import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:the_movies/models/coming_soon.dart';
import 'package:the_movies/providers/coming_soon_provider.dart';
import 'package:the_movies/widgets/grea_area.dart';
import 'package:the_movies/widgets/main_menu_list.dart';
import 'package:the_movies/widgets/movie_menu_list.dart';
import 'package:the_movies/widgets/movie_carousel.dart';
import 'package:the_movies/widgets/main_drawer.dart';
import 'package:the_movies/screens/nav_screen.dart';
import 'package:the_movies/models/coming_soon.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
/*var menuItems = [
    {
        'image' : 'iconimages/action.png',
        'text' : 'Action',
     },
    {
        'image' : 'iconimages/adventure.png',
        'text' : 'Adventure',
     },
    {
        'image' : 'iconimages/comedy.png',
        'text' : 'Comedy',
     },
    {
        'image' : 'iconimages/crime.png',
        'text' : 'Crime',
     },
    {
        'image' : 'iconimages/drama.png',
        'text' : 'Drama',
     },
    {
        'image' : 'iconimages/fantasy.png',
        'text' : 'Fantasy',
     },
    {
        'image' : 'iconimages/kids.png',
        'text' : 'Kids',
     },
    {
        'image' : 'iconimages/mistery.png',
        'text' : 'Mistery',
     },
    {
        'image' : 'iconimages/sciencefiction.png',
        'text' : 'Sciencefiction',
     },
    {
        'image' : 'iconimages/thriller.png',
        'text' : 'Thriller',
     },                                        
  ];
*/

List <String> TopMovisImages = [
    "movieimages/1.jpg",
    "movieimages/2.jpg",
    "movieimages/3.jpg",
    "movieimages/4.jpg",
    "movieimages/5.jpg",
  ];
  
  /*List <String> playingSoonImages = [
    "movieimages/6.jpg",
    "movieimages/7.jpg",
    "movieimages/8.jpg",
    "movieimages/9.jpg",
    "movieimages/10.jpg",
  ];*/

//ambil data dari model scrip ini di pindah ke build
/*
  List<String> comingSoonImages = 
    //comingSoonList.map((cmItems) => cmItems.imageUrl).toList();
    comingSoonList.map((cmItems) => cmItems.imageUrl).take(4).toList();//hanya ambil 4 data aja
*/    
  
  @override
  Widget build(BuildContext context) {
    final dataComingSoons = Provider.of<ComingSoonProvider>(context);
    final comingSoons = dataComingSoons.items;
    List<String> comingSoonImages = 
    comingSoons.map((cmItems) => cmItems.imageUrl).take(4).toList();//hanya ambil 4 data aja

    return ListView(
        children:<Widget>[
         GreaArea(),
         MovieCarousel(),
         GreaArea(),
         //MainMenuList(menuItems: menuItems),
         MainMenuList(),
         GreaArea(),
         //Image.asset('movieimages/1.jpg'),
         MovieMenuList(title:"Top Movies",movieImages :TopMovisImages,),
         /*MovieMenuList(
            title:"Top Movies",
            movieImages :TopMovisImages,
            lihatSemua:(){},
            ),*/
         GreaArea(),
         //MovieMenuList,
         //MovieMenuList(title:"Coming Soon Movies",movieImages :playingSoonImages),
         MovieMenuList(
             title:"Coming Soon Movies",
             movieImages :comingSoonImages,
             lihatSemua:()=>Navigator.pushNamed(context, '/comingsoon'),
             ),
        ],

      );
                      
    //);
  }
}