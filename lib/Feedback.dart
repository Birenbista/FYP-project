import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_app/Main_Drawer.dart';

class FeedbackForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeedbackPage();
  }
}

class FeedbackPage extends State<FeedbackForm> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.grey,
        title: Text('Royal Enfield Bike Servicing'),
        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
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
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Card(
            elevation: 8,
            margin: const EdgeInsets.all(5),
            color: Colors.grey,
            child: ListTile(
              title: Text(
                "Feedback Form ",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Feedback form',
                  hintText: "Type feedback here"),
              maxLines: 10,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.black12,
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Clear",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.black12,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
