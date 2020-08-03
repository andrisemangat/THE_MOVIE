import 'package:flutter/cupertino.dart';

class Kategori{
  final String id;
  final String kategori;
  final String image;

  Kategori({@required this.id,@required this.kategori, @required this.image});
}

final List<Kategori> kategoriList = [
    Kategori(
	    id : '1',
      kategori : 'Action',
		  image : 'iconimages/action.png',
    ),
    Kategori(
	    id : '2',
		  kategori : 'Adventure',
        image : 'iconimages/adventure.png',
    ),
    Kategori(
	    id : '3',
      kategori : 'Comedy',
		  image : 'iconimages/comedy.png',        
    ),
    Kategori(
	    id : '4',
      kategori : 'Crime',
		  image : 'iconimages/crime.png',
     ),
    Kategori(
	    id : '5',
      kategori : 'Drama',
		  image : 'iconimages/drama.png',        
    ),
    Kategori(
	    id : '6',
      kategori : 'Fantasy',
		  image : 'iconimages/fantasy.png',        
    ),
    Kategori(
	    id : '7',
        kategori : 'Kids',
		image : 'iconimages/kids.png',        
    ),
    Kategori(
	    id : '8',
        kategori : 'Mistery',
		image : 'iconimages/mistery.png',
     ),
    Kategori(
	    id : '9',
        kategori : 'Sciencefiction',
		image : 'iconimages/sciencefiction.png',
    ),
    Kategori(
	    id : '10',
        kategori : 'Thriller',
		image : 'iconimages/thriller.png',
     ),                                        
];
