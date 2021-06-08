import 'package:flutter/material.dart';
import 'items/item.dart';

class Minuman extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Boba Brown Sugar', price: 5000, image: Image.asset("img/boba.png", width: 200.0,), desc: 'milk tea rasa brown sugar dengan topping boba' ),
    Item(name: 'Brownie Batter', price: 2000, image: Image.asset("img/browniebatter.png", width: 200.0,), desc: 'milk tea rasa caramell dengan opping wipcream'),
    Item(name: 'Es Cendol', price: 7000, image: Image.asset("img/cendol.png", width: 200.0,), desc: 'minuman khas Jawa Timur'),
    Item(name: 'Choco Latte', price: 4000, image: Image.asset("img/chocolate.png", width: 200.0,), desc: 'es chocolate dengan latte'),
    Item(name: 'Coffee Latte', price: 4000, image: Image.asset("img/coffeelatte.png", width: 200.0,), desc: 'es coffee dengan latte'),
    Item(name: 'Dalgona Choco', price: 4000, image: Image.asset("img/dalgonachoco.png", width: 200.0,), desc: 'es cocho yang diolah menjadi dalgona'),
    Item(name: 'Dalgona Coffee', price: 4000, image: Image.asset("img/dalgonacoffee.png", width: 200.0,), desc: 'es coffee yang diolah menjadi dalgona'),
    Item(name: 'Choco Matcha', price: 4000, image: Image.asset("img/chocomatcha.png", width: 200.0,), desc: 'es choco dengan matcha'),

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
            Navigator.pushNamed(context, '/detailminuman', arguments: item);
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