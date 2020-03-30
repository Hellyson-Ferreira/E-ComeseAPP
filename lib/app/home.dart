import 'package:flutter/material.dart';

import 'components/sidebar-widget.dart';
import 'models/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     List<ProductModel> listProduct = [
      ProductModel(
        id: 1,
        title: 'Potato',
        picture: 'https://i.imgur.com/J2wBTng.png',
        price: 30,
        per: 'kg'
      ),
      ProductModel(
        id: 2,
        title: 'Cabbage',
        picture: 'https://i.imgur.com/aAjZPW8.png',
        price: 25,
        per: 'pc'
        
      ),
      ProductModel(
        id: 3,
        title: 'CauliFlower',
        picture: 'https://i.imgur.com/NHi23VR.png',
        price: 30,
        per: 'pc'
      ),
      ProductModel(
        id: 4,
        title: 'Pumpkin',
        picture: 'https://i.imgur.com/zhqehXD.png',
        price: 45,
      ),
      ProductModel(
        id: 5,
        title: 'Beet',
        picture: 'https://i.imgur.com/zhqehXD.png',
        price: 120,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.short_text,color: Colors.black,), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_basket, color: Colors.black,), onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //showSelectedLabels: false,   
        //showUnselectedLabels: false, 
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.green,),
            title: Text('1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,color: Color(0xffB3B4A9),),
            title: Text('2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone,color: Color(0xffB3B4A9),),
            title: Text('3'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Color(0xffB3B4A9),),
            title: Text('4'),
          ),
        
        ],
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                prefix: Icon(Icons.search, color: Colors.black,),
                hintText: 'Search Your Product',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10, 200, 10),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
              ),
            ),
          ),
          //Sidebar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Sidebar(),

            ],

          ),
        ],
        
      ),
    );
  }
}
