import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final int id;
  final String title;
  final String picture;
  final double price;
  final String per;
  final Color color;
  final Function onTap;

  ProductItem({
    Key key,
    this.id,
    this.title,
    this.picture,
    this.price,
    this.per,
    this.color,
    this.onTap,
  }) : super(key: key);
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              //Color card
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8,vertical: 9),
                height: size.height * 0.34,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              //Button add
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  height: size.height * 0.072,
                  width: size.width * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                      )),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              //image of product
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10,),
                height: size.height * 0.333,
                width: size.width * 0.388,
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.062),
                  child: Align(
                    alignment: Alignment.topCenter,
                    //Container de shadow effect
                    child: Image.network(
                      widget.picture,
                      height: size.height * 0.203,
                    ),
                  ),
                ),
              ),
              //Title
              Container(
                margin: EdgeInsets.only(
                    left: 16, top: 145, bottom:0),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //price
              Container(
                margin: EdgeInsets.only(
                    left: 16, top: 195, bottom:0),
                child: Text(
                  '€ ' + widget.price.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //per
              Container(
                margin: EdgeInsets.only(
                    left: 16, top: 215, bottom:0),
                child: Text(
                  'Per ${widget.per}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),            
            ],
          )
        ],
      ),
    );
  }
}
