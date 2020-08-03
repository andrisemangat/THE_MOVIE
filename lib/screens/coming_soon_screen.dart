import 'package:flutter/material.dart';
import 'package:the_movies/models/coming_soon.dart';
import 'package:the_movies/widgets/coming_soon_cell.dart';
import 'package:the_movies/providers/coming_soon_provider.dart';
import 'package:provider/provider.dart';

class ComingSoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        //ambil data dengan provider
    final dataComingSoons = Provider.of<ComingSoonProvider>(context);
    final comingSoons = dataComingSoons.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('Coming Soon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Coming Soon Movie',
              style: TextStyle(fontSize:30.0, fontWeight: FontWeight.bold),
              
            ),
            Expanded(
              child: ListView.builder(
                //provider
                itemCount: comingSoons == null ? 0 : comingSoons.length  , 
                itemBuilder: (context, i) => ChangeNotifierProvider.value(
                      value: comingSoons[i],
                      child: FlatButton(
                        child: ComingSoonCell(),
                        padding: EdgeInsets.all(0.0),
                        color: Colors.white, 
                        onPressed: null,
                      ),
                    ),
                /*itemBuilder: (context,i) => ChangeNotifierProvider(
                  builder: (ctx) =>comingSoons[i],
                  child: FlatButton(
                    child: ComingSoonCell(),
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                    onPressed: null, 
                    ),
                  ),*/

                
                //lama
                //itemCount: comingSoonList == null ? 0 : comingSoonList.length  , 
                //cara lama pakai model
                /*
                itemBuilder: (context,i){
                  //return Text(comingSoonList[i].title);
                  return FlatButton(
                    //child: Text('data'),
                    child: ComingSoonCell(
                      comingSoonList[i].id,
                      comingSoonList[i].title,
                      comingSoonList[i].description,
                      comingSoonList[i].imageUrl
                      ),
                    padding: EdgeInsets.all(0.0),
                    color: Colors.white,
                    onPressed: (){debugPrint('del');},
                    
                    );
                    
                }
                */
                )
                ),

          ],
        ),
      ),
    );
  }
}