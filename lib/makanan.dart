import 'package:flutter/material.dart';
import 'items/item.dart';

class Makanan extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Nasi Goreng', price: 12000, image: Image.asset("img/nasgor.png", width: 200.0,), desc: 'nasi goreng dengan telor dan ayam' ),
    Item(name: 'Gado Gado', price: 15000, image: Image.asset("img/gado.png", width: 200.0,), desc: 'gado gado dengan berbagai macam sayur dan sambal kacang'),
    Item(name: 'Sop Buntut', price: 30000, image: Image.asset("img/sopbuntut.png", width: 200.0,), desc: 'sop buntut asli'),
    Item(name: 'Steak', price: 50000, image: Image.asset("img/steak.png", width: 200.0,), desc: 'steak wagyu a5'),
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
                children: [
                  Expanded(child: Text(item.name,style: TextStyle(fontSize: 15),)),
                  Expanded
                  (child: Text(
                    item.price.toString(), style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.end,
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