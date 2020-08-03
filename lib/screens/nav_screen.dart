import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:the_movies/widgets/main_drawer.dart';
import 'detail_movie_screen.dart';
import 'package:the_movies/screens/movie_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPagesIndex = 0;
  
    @override
  void initState(){
     _pages = [
       {'page':HomeScreen(),'title':'Home'},
       {'page':MovieScreen(),'title':'Detail Movie'},
     ];
     super.initState();
  }

  void _selectedPages(int index){
    setState(() {
      _selectedPagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
                     iconTheme: IconThemeData(color:Colors.red),
                     //title: Text('The Movies',
                     title: Text(_pages[_selectedPagesIndex]['title'],
                                 style: TextStyle(color: Colors.red),),
                     backgroundColor: Colors.white,
                     actions: <Widget>[
                         IconButton(
                         icon: Icon(Icons.search, color: Colors.red,),
                         tooltip: 'Show Snackbar',
                             onPressed: () {
              
                             },
                         ),
                     ],
     
       ),
      //bottomNavigationBar: NavScreen(),
      
      //body: HomeScreen(),
      body: _pages[_selectedPagesIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        //selectedItemColor: Colors.blue,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPagesIndex,
        items: [        
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('HOME', style: TextStyle(color:Colors.white),)),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          title: Text('LIST MOVIE', style: TextStyle(color:Colors.white),)),

      ],
      //onTap: (int tekanTombol){
      //  debugPrint("tekan tombol $tekanTombol");
      //},
      onTap: _selectedPages,
    ));
  }
}

      