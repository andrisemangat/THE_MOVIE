import 'package:flutter/cupertino.dart';
import 'package:the_movies/models/coming_soon.dart';

class ComingSoonProvider with ChangeNotifier{
   List<ComingSoon> _comingSoonList = [
      ComingSoon(
         id:'6',
         title:'Dora',
         description : 'ini adalah Dora',
         imageUrl : "movieimages/6.jpg",
         ),
      ComingSoon(
         id:'7',
         title:'Naruto',
         description : 'ini adalah Dora',
         imageUrl : "movieimages/7.jpg",
        ),
      ComingSoon(
         id:'8',
         title:'Dora',
         description : 'ini adalah Dora',
         imageUrl : "movieimages/8.jpg",
        ),
      ComingSoon(
         id:'9',
         title:'Dora',
         description : 'ini adalah Dora',
         imageUrl : "movieimages/9.jpg",
       ),
       ComingSoon(
         id:'10',
         title:'Dora',
         description : 'ini adalah Dora',
         imageUrl : "movieimages/10.jpg",
      ),
   ];

   List<ComingSoon> get items{
     return [... _comingSoonList];
}
}