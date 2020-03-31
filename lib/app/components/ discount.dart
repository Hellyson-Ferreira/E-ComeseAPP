import 'package:flutter/material.dart';

class DiscountCard extends StatefulWidget {
  final int id;
  final String title;
  final double discout;
  final String circularText;
  final String description;
  final Color color;
  final Function onTap;
  const DiscountCard({
    Key key,
    this.id,
    this.title,
    this.discout,
    this.circularText,
    this.description,
    this.color,
    this.onTap,
  }) : super(key: key);
  @override
  _DiscountCardState createState() => _DiscountCardState();
}

class _DiscountCardState extends State<DiscountCard> {
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
                margin: EdgeInsets.symmetric(horizontal: 8,vertical: 9),
                height: size.height * 0.24,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              //Title
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 16, top: 12, bottom:0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 16, top: 33, bottom:0),
                  child: Text(
                    widget.discout.toInt().toString()+'%' + ' OFF',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 16, top: 80, bottom:0),
                  child: Text(
                    widget.circularText,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),            
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 16, top: 100, bottom:0),
                  child: Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
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