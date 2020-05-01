import 'package:e_commerce_app/app/models/product.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    List listProduct = [
      ProductModel(
        id: 1,
        title: 'Potato',
        picture: 'assets/vegetables/potato.png',
        price: 30,
        per: 'kg',
        color: Color(0xFFE3CDA3),
      ),
      ProductModel(
        id: 3,
        title: 'CauliFlower',
        picture: 'assets/vegetables/cauliflower.png',
        price: 30,
        per: 'pc',
        color: Color(0xFFB0D47D),
      ),
      ProductModel(
        id: 2,
        title: 'Cabbage',
        picture: 'assets/vegetables/cabbage.png',
        price: 25,
        per: 'pc',
        color: Color(0XFFDFA2D7),
      ),
      ProductModel(
        id: 4,
        title: 'Pumpkin',
        per: 'pc',
        picture: 'assets/vegetables/pumpkin.png',
        price: 45,
        color: Color(0xFFF5C58D),
      ),
      ProductModel(
        id: 5,
        title: 'Beet',
        picture: 'assets/vegetables/beet.png',
        price: 120,
        color: Color(0xFFECA0B2),
        per: 'kg',
      ),
      ProductModel(
        id: 5,
        title: 'Chayote',
        picture: 'assets/vegetables/chayote.png',
        price: 120,
        color: Color(0xFFB0D47D),
        per: 'Delivery',
      ),
    ];
    return Container(
        child: ListView.builder(
      itemCount: listProduct.length,
      itemBuilder: (contex, index) {
        ProductModel productModel = listProduct[index];
        return index <= 4
            ? ListTile(
                trailing: Text('£ ${productModel.price}'),
                leading: CircleAvatar(
                  backgroundColor: productModel.color,
                  child: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage(
                      productModel.picture,
                    ),
                  ),
                ),
                title: Text("1${productModel.per} x ${productModel.title}"),
              )
            : ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                trailing: Text('£ 60'),
                title: Text('Delivery'),
                subtitle:
                    Text('Products above 1000 tk eligible for free shipping'),
              );
      },
    ));
  }
}
