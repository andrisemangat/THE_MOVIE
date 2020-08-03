import 'package:flutter/material.dart';


class AddQtyModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
         child: Container(
            height: 400.0,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  autofocus: true,
                  decoration : 
                  InputDecoration(labelText:'Masukkan Qty Movie'),
                  keyboardType: TextInputType.number,
                  //onChanged: (qty) {
                    //  newQty = int.parse(qty);
                    //},
                ),
                FlatButton(
                  child: Text('SIMPAN'),
                  onPressed: null, 
                  color: Colors.red,
                  ),
              ],
            ),
            
          ),
    );
  }
}