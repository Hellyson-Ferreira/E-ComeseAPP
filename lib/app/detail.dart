import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Detail extends StatefulWidget {
  final int id;
  final String title;
  final String picture;
  final double price;
  final String per;
  final Color color;
  final String details;

  Detail({
    Key key,
    this.id,
    @required this.title,
    @required this.picture,
    @required this.price,
    this.per,
    this.color,
    this.details,
  }) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var _itemCount = 0;
    var size = MediaQuery.of(context).size;
    //var topSpace = MediaQuery.of(context).padding.top + kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.color,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(context),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                MdiIcons.store,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          //background
          Positioned(
            top: 0,
            child: Container(
              height: size.height / 2,
              width: size.width,
              color: widget.color,
            ),
          ),

          //Img
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            bottom: size.height / 2,
            child: Container(
              height: size.height,
              width: size.width,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  widget.picture,
                  height: size.height / 4,
                ),
              ),
            ),
          ),

          //White card
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  //scent name
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  //price and stars
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'BTD : ${widget.price.toInt()} (per ${widget.per})',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF59A05E),
                        ),
                      ),
                    ],
                  ),
                  //Details
                  Text(widget.details.toString()),
                
                ],
              ),
            ),
          ),

          //Button bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 0.098,
              decoration: BoxDecoration(
                color: Colors.green,
                //borderRadius: BorderRadius.circular(30.0)
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Add To Cart',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Icon(MdiIcons.shoppingOutline, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
