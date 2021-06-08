import 'package:flutter/material.dart';
import 'items/item.dart';


class DetailMinuman extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Detail Minuman"),
      ),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            child: itemArgs.image,
          ),
          SizedBox(height: 30,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded( 
                child: Text("Name       : ", style: TextStyle(fontSize: 15),), 
                ),
                Expanded(
                  child:Text( 
                    itemArgs.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.end, 
                  ),
                ),
              ],
            ),
          ),
            Divider( 
            color: Colors.black 
          ),
            SizedBox(height: 10,),
            Container(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded( 
                    child: Text("Price        : ", style: TextStyle(fontSize: 15),), 
                    ),
                    Expanded(
                      child:Text( 
                       'Rp ' + itemArgs.price.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, ), textAlign: TextAlign.end, 
                      ),
                    ),
              ],
            ),
            ),
            Divider( 
            color: Colors.black 
          ),
          SizedBox(height: 10,),
          Container(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded( 
                    child: Text("Desc     : ", style: TextStyle(fontSize: 15),), 
                    ),
                    Expanded(
                      child:Text( 
                        itemArgs.desc, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.end, 
                      ),
                    ),
              ],
            ),
            ),
            Divider( 
            color: Colors.black 
          ),
        ],
      ),
    ),
    );
  }
}

