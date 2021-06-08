import 'package:flutter/material.dart';
import 'package:project_dicoding/detailmakanan.dart';
import 'package:project_dicoding/detailminuman.dart';
import './makanan.dart' as makanan;
import './minuman.dart' as minuman;

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/detailmakanan': (context) => DetailMakanan(),
      '/detailminuman': (context) => DetailMinuman(),
    },
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;
  @override 
  void initState(){
    controller = new TabController(vsync: this, length: 2);
      super.initState();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Menu"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.food_bank),text: "Makanan",),
            new Tab(icon: new Icon(Icons.emoji_food_beverage),text: "Minuman",),
          ]
          ),
      ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new makanan.Makanan(),
          new minuman.Minuman(),
        ]
        ),
    );
  }
}