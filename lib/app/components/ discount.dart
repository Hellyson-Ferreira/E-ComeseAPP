import 'package:flutter/material.dart';

class DiscountCard extends StatefulWidget {
  final int id;
  final String title;
  final double discout;
  final String circularText;
  final String description;
  final Color color;
  final String image1;
  final String image2;
  final String image3;
  final Function onTap;
  const DiscountCard({
    Key key,
    this.id,
    this.title,
    this.discout,
    this.circularText,
    this.description,
    this.color,
    this.image1,
    this.image2,
    this.image3,
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
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                height: size.height * 0.23,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              //Imgens
              Positioned(
                bottom: 121,
                right: 7,
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.07,
                  child: Image.asset(widget.image1),
                )
                ),
                Positioned(
                bottom: 12,
                right: 10,
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.12,
                  child: Image.asset(widget.image2),
                )
                ),
                Positioned(
                bottom: 102,
                left: 2,
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.12,
                  child: Image.asset(widget.image3),
                )
                ),
              //Title
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 22, bottom: 0),
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
                  margin: EdgeInsets.only(left: 16, top: 38, bottom: 0),
                  child: Text(
                    widget.discout.toInt().toString() + '%' + ' OFF',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              //Text 
              Center(
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  margin: EdgeInsets.only( top: 70, bottom: 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color: Colors.green,),
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0) //       
                        ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
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
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 100, bottom: 0),
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
