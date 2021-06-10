import 'package:flutter/material.dart';
import 'items/item.dart';

class Makanan extends StatefulWidget {
  @override
  _MakananState createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  final List<Item> items = [
    Item(name: 'Nasi Goreng', price: 12000, image: Image.asset("img/nasgor.png", width: 200.0,), desc: 'nasi goreng dengan telor dan ayam', counter: 0 ),
    Item(name: 'Gado Gado', price: 15000, image: Image.asset("img/gado.png", width: 200.0,), desc: 'gado gado dengan berbagai macam sayur dan sambal kacang', counter: 0),
    Item(name: 'Sop Buntut', price: 30000, image: Image.asset("img/sopbuntut.png", width: 200.0,), desc: 'sop buntut asli', counter: 0),
    Item(name: 'Steak', price: 50000, image: Image.asset("img/steak.png", width: 200.0,), desc: 'steak wagyu a5', counter: 0),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    margin: EdgeInsets.all(8),
    child: ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index){
        final item = items[index];
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/detailmakanan', arguments: item);
          },
          child: Card(
            child: Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Text(item.name,style: TextStyle(fontSize: 15),)),
                  Expanded
                  (child: Text(
                    item.price.toString(), style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.end,
                  ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: RaisedButton(
                      elevation: 6.0,
                      onPressed: (){
                        if (item.counter != 0){
                          setState(() {
                            item.counter--;
                          });
                        }
                        print(item.counter);
                      },
                      child: Icon(Icons.remove, size: 18,),
                      ),
                  ),
                  SizedBox(width: 10.0,),
                  Text(item.counter.toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        setState(() {
                            item.counter++;
                          });
                        print(item.counter);
                      },
                      child: Icon(Icons.add, size: 18,),
                      ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      ),
      ),
    );
      
  }
}