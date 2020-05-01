import 'package:e_commerce_app/app/order_list.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(context),
          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: size.width,
                      child: Text(
                        'MY CART',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: OrderList()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80,
                    left: 12),
                    child: Row(
                      children: [
                         Container(
                          width: size.width * 0.4,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: size.width * 0.5,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '£ 310',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        bottomSheet: Row(
          children: [
            Container(
              height: size.height * 0.098,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(30.0)
                border: Border.all(width: 2.5, color: Colors.green),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  //topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 60,
                      child: Text(
                        'Remove Itens',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(MdiIcons.shoppingOutline, color: Colors.white),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.098,
              width: size.width - 150,
              decoration: BoxDecoration(
                color: Colors.green,
                //borderRadius: BorderRadius.circular(30.0)
                borderRadius: BorderRadius.only(
                  //topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Checkout',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
