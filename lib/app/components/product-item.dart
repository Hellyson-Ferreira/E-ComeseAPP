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
      child: Wrap(
        children: <Widget>[
          Stack(
            children: <Widget>[
              //Color card
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 7),
                height: size.height * 0.34,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              //Button add
              Positioned(
                bottom: 7,
                right: 0,
                child: Container(
                  height: size.height * 0.072,
                  width: size.width * 0.12,
                  padding: EdgeInsets.all(0),
                  child: RaisedButton(
                    onPressed: (){},
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                  // child: Icon(
                  //   Icons.add,
                  //   color: Colors.black,
                  // ),
                ),
              ),
              //image of product
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 35,
                ),
                height: size.height * 0.30 - 60,
                width: size.width * 0.35,
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.062),
                  child: Align(
                    alignment: Alignment.topCenter,
                    //Container de shadow effect
                    child: Image.asset(
                      widget.picture,
                      height: size.height * 0.12,
                    ),
                  ),
                ),
              ),
              //Title
              Container(
                margin: EdgeInsets.only(left: 16, top: 125, bottom: 0),
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
                margin: EdgeInsets.only(left: 16, top: 170, bottom: 0),
                child: Text(
                  '€ ${widget.price.toInt()}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //per
              Container(
                margin: EdgeInsets.only(left: 16, top: 189, bottom: 0),
                child: Text(
                  'Per ${widget.per}',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
