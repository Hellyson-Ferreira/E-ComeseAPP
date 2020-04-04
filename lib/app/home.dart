import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'components/ discount.dart';
import 'components/product-item.dart';
import 'components/sidebar-widget.dart';
import 'detail.dart';
import 'models/discount-model.dart';
import 'models/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    List listDiscount = [
      DiscoutModel(
        id: 0,
        title: 'Spring Offer',
        discout: 20,
        description: 'Use this coupon\n\t\tfor discout',
        color: Colors.lightGreen[200],
        circularTex: 'SPRING FOOD',
        image1: 'assets/vegetables/broccoli.png',
        image2: 'assets/vegetables/spinach.png',
        image3: 'assets/vegetables/pod.png',
      )
    ];
    List listProduct = [
      ProductModel(),
      ProductModel(
          id: 1,
          title: 'Potato',
          picture: 'assets/vegetables/potato.png',
          price: 30,
          per: 'kg',
          color: Color(0xFFE3CDA3),
          details: ''),
      ProductModel(
          id: 2,
          title: 'Cabbage',
          picture: 'assets/vegetables/cabbage.png',
          price: 25,
          per: 'pc',
          color: Color(0XFFDFA2D7),
          details: ''),
      ProductModel(
          id: 3,
          title: 'CauliFlower',
          picture: 'assets/vegetables/cauliflower.png',
          price: 30,
          per: 'pc',
          color: Color(0xFFB0D47D),
          details: ''),
      ProductModel(
          id: 4,
          title: 'Pumpkin',
          per: 'pc',
          picture: 'assets/vegetables/pumpkin.png',
          price: 45,
          color: Color(0xFFF5C58D),
          details: ''),
      ProductModel(
          id: 5,
          title: 'Beet',
          picture: 'assets/vegetables/beet.png',
          price: 120,
          color: Color(0xFFECA0B2),
          per: 'kg',
          details:
              'The beetroot is the taproot portion of a beet plant, usually known in North America as the beet, and also known as the table beet, garden beet, red beet, dinner beet or golden beet.'),
      ProductModel(
          id: 5,
          title: 'Bell pepper',
          picture: 'assets/vegetables/bell-pepper.png',
          price: 100,
          per: 'kg',
          color: Color(0xFFEE7F82),
          details: ''),
      ProductModel(
          id: 5,
          title: 'Chayote',
          picture: 'assets/vegetables/chayote.png',
          price: 120,
          color: Color(0xFFB0D47D),
          per: 'kg',
          details: ''),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.short_text,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.homeOutline,
              color: Colors.green,
            ),
            title: Text('1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MdiIcons.giftOutline,
              color: Color(0xffB3B4A9),
            ),
            title: Text('2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
              color: Color(0xffB3B4A9),
            ),
            title: Text('3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xffB3B4A9),
            ),
            title: Text('4'),
          ),
        ],
      ),
      body: Wrap(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  // prefix: Icon(Icons.search, color: Colors.black,),
                  hintText: 'Search Your Product',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10, 200, 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
          ),
          //Sidebar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Sidebar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.black,
                    height: 450,
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 1,
                      itemCount: listProduct.length,
                      itemBuilder: (context, index) {
                        ProductModel productModel = listProduct[index];
                        DiscoutModel discoutModel = listDiscount[0];

                        return index == 0
                            ? DiscountCard(
                                title: discoutModel.title,
                                description: discoutModel.description,
                                circularText: discoutModel.circularTex,
                                discout: discoutModel.discout,
                                color: discoutModel.color,
                                image1: discoutModel.image1,
                                image2: discoutModel.image2,
                                image3: discoutModel.image3)
                            : ProductItem(
                                title: productModel.title,
                                picture: productModel.picture,
                                price: productModel.price,
                                per: productModel.per,
                                color: productModel.color,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detail(
                                        title: productModel.title,
                                        picture: productModel.picture,
                                        price: productModel.price,
                                        per: productModel.per,
                                        color: productModel.color,
                                        details: productModel.details,
                                      ),
                                    ),
                                  );
                                },
                              );
                      },
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.count(1, index == 0 ? 0.98 : 1.4);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
