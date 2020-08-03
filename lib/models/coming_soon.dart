import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

//untuk provider
class ComingSoon with ChangeNotifier{ 
  //untuk model
//class ComingSoon{
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  ComingSoon({@required this.id, @required this.title, @required this.description, @required this.imageUrl});
  
}

/*final List<ComingSoon> comingSoonList = [
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

];*/