import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    List<String> category = [
      "Rice",
      "Spice",
      "Vegetables",
      "Fish",
      "Meat",
      "Fruits",
      "& Seeds",
    ];
    var size = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[0],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[1],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[2],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
          ),
            RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[3],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
          ),
          RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[4],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[5],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
          ),
            RotatedBox(
            quarterTurns: 3,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  category[6],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0XFF31492E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}
