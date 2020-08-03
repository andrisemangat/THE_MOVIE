import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
//untuk provider
class Movie with ChangeNotifier{
//untuk model
//class Movie{
  final String id;
  final String title;
  final List<String> kategori;
  final String description;
  final String rating;
  final double price;
  final String imageUrl;

  Movie({@required this.id, @required this.title, @required this.kategori, 
     @required this.description, @required this.rating, @required this.price, 
     @required this.imageUrl });
}

/*final List<Movie> movieList = [
  Movie(
    id : '1',
    kategori : ['1','2'],
    title: 'Naruto',
    description: 'ini adalah descripsi naruto',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/1.jpg",
  ),
  Movie(
    id : '2',
    kategori : ['3','4'],
    title: 'x-men',
    description: 'ini adalah descripsi x-men',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/2.jpg",
  ),  
  Movie(
    id : '3',
    kategori : ['5','6'],
    title: 'Ninja',
    description: 'ini adalah descripsi ninja',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/3.jpg",
  ),  
  Movie(
    id : '4',
    kategori : ['7','8'],
    title: 'Hero',
    description: 'ini adalah descripsi Hero',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/4.jpg",
  ),
  Movie(
    id : '5',
    kategori : ['9','10'],
    title: 'Dragon Ball',
    description: 'ini adalah descripsi Dragon Ball',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/5.jpg",
  ),  
  Movie(
    id : '6',
    kategori : ['1','2'],
    title: 'Avenger',
    description: 'ini adalah descripsi Avenger',
    rating: '7',
    price: 2000.0,
    imageUrl: "movieimages/6.jpg",
  ),
  
];
*/