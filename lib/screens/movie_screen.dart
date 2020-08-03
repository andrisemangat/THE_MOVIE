import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_movies/models/kategori.dart';
import 'package:the_movies/models/movie.dart';
import 'package:the_movies/screens/detail_movie_screen.dart';
import 'package:the_movies/providers/movie_provider.dart';

class MovieScreen extends StatefulWidget {
    
  /*var movie_list = [
 {
  'idmovie':'1',
  'nama':'x-men',
   'picture':'movieimages/1.jpg',
  'rating':'7',
  'harga':'Rp. 7000',  
},
 {
  'idmovie':'2',
  'nama':'ninja',
   'picture':'movieimages/2.jpg',
  'rating':'7',
  'harga':'Rp. 5000',  
},
 {
  'idmovie':'3',
  'nama':'angrybird',
   'picture':'movieimages/3.jpg',
  'rating':'7',
  'harga':'Rp. 7000',  
},
 {
  'idmovie':'4',
  'nama':'naruto',
   'picture':'movieimages/4.jpg',
  'rating':'7',
  'harga':'Rp. 50000',  
},
 {
  'idmovie':'5',
  'nama':'fast',
   'picture':'movieimages/5.jpg',
  'rating':'7',
  'harga':'Rp. 50000',  
},
 {
  'idmovie':'6',
  'nama':'naruto',
   'picture':'movieimages/6.jpg',
  'rating':'7',
  'harga':'Rp. 50000',  
},
 {
  'idmovie':'7',
  'nama':'naruto',
   'picture':'movieimages/7.jpg',
  'rating':'7',
  'harga':'Rp. 50000',  
},

];*/
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  List<Movie> disPlayMovies;
  var _loadedInitData = false;
  String id = '';
  String kategori= '';

  @override
  void initState(){
    super.initState();
  }

  @override
  void didChangeDependencies(){
    //ambil data dengan provider
    final dataMovies = Provider.of<MovieProvider>(context);
    final movies = dataMovies.items;
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    //cek all ato where 
     if( !_loadedInitData && routeArgs == null) {
       disPlayMovies = movies;
       _loadedInitData = false;
     } else{
       id = routeArgs['id'];
       kategori = routeArgs['kategori'];

       //cara provider
       disPlayMovies = Provider.of<MovieProvider>(context, listen: false).findByKategori(id);
       /* cara lama
       //filter list movie
       disPlayMovies = movies.where((Movie){
       return Movie.kategori.contains(id);
       }).toList();
       */
      _loadedInitData = true;
     }    
    /*
    //ambil data dari parameter model
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    //cek all ato where 
     if( !_loadedInitData && routeArgs == null) {
       disPlayMovies = movieList;
       _loadedInitData = false;
     } else{
       id = routeArgs['id'];
       kategori = routeArgs['kategori'];

       //filter list movie
       disPlayMovies = movieList.where((Movie){
       return Movie.kategori.contains(id);
       }).toList();
      _loadedInitData = true;
     }
     */


    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    /*
    //tangak parameter pushname
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final Kategori = routeArgs['kategori'];

    //filter list movie
    final disPlayMovies = movieList.where((Movie){
       return Movie.kategori.contains(id);
       }).toList();
     */
    return Scaffold(
      appBar: AppBar(
        title: Text('List Movis  $kategori'),        
      ),
      body: GridView.builder(
        //itemCount: movie_list.length,
        itemCount: disPlayMovies.length, // movieList.length,        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleMovie(
            /*id_movie : movie_list[index]['idmovie'],
            nama_movie: movie_list[index]['nama'],
            picture_movie: movie_list[index]['picture'],
            rating_movie: movie_list[index]['rating'],
            harga_movie: movie_list[index]['harga'],*/
            /*id_movie : movieList[index].id,
            nama_movie: movieList[index].title,
            picture_movie: movieList[index].imageUrl,
            rating_movie: movieList[index].rating,
            harga_movie: movieList[index].price,*/
            id_movie : disPlayMovies[index].id,
            nama_movie: disPlayMovies[index].title,
            picture_movie: disPlayMovies[index].imageUrl,
            rating_movie: disPlayMovies[index].rating,
            harga_movie: disPlayMovies[index].price,


          );
        },
        ),
    );
  }
}

class SingleMovie extends StatelessWidget {
  final id_movie;
  final nama_movie;
  final picture_movie;
  final rating_movie;
  final harga_movie;

  SingleMovie({this.id_movie, this.nama_movie, this.picture_movie, this.rating_movie, this.harga_movie});

   void _selecMovie(BuildContext ctx) {
     Navigator.pushNamed(ctx, '/detail-movie', arguments: id_movie);
      //Navigator.push(ctx, MaterialPageRoute(builder: (context)=>DetailMovieScreen()));
    }


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: id_movie, 
                  child: InkWell(
                    onTap: () =>_selecMovie(context),
                                        child: GridTile(child: Image.asset(picture_movie, fit: BoxFit.fill,),
                                        footer: Container(
                                          color: Colors.white70,
                                          child: ListTile(
                                            leading: Text(
                                              nama_movie,
                                              style: TextStyle(fontSize: 18),
                                              ),
                                            title: Text('Rp. '+
                                                 harga_movie.toString(), 
                                                 style: Theme.of(context).textTheme.subtitle,// TextStyle(),
                                                  ),
                                            //title: 
                                          ),
                                        ),),
                                      )),
                          
                        );
                      }
                    
}