import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyp_app/pages/Booking.dart';
import 'package:fyp_app/pages/Feedback.dart';
import 'package:fyp_app/pages/Main_Drawer.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepage();
  }
}

class Homepage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Royal Enfield Bike Servicing'),
        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('Assets/logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              width: 500,
              padding: EdgeInsets.all(5),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    "Book Bike Servicing",
                    style: TextStyle(color: Colors.black, fontSize: 27),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
              ),
            ),
            Container(
              height: 150,
              width: 500,
              padding: EdgeInsets.all(5),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    "View Service Centre",
                    style: TextStyle(color: Colors.black, fontSize: 27),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 150,
              width: 500,
              padding: EdgeInsets.all(5),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    "View Bike Accessories",
                    style: TextStyle(color: Colors.black, fontSize: 27),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 150,
              width: 500,
              padding: EdgeInsets.all(5),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    "Give Feedback",
                    style: TextStyle(color: Colors.black, fontSize: 27),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeedbackForm()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
