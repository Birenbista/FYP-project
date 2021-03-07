import 'package:flutter/material.dart';
import 'package:fyp_app/Setting_Page.dart';

import 'Homepage.dart';
import 'User_Profile.dart';
import 'main.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).primaryColor,
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('Assets/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )),
        ),
        ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }),
        ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserProfile()));
            }),
        ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            }),
        ListTile(
            leading: Icon(Icons.bike_scooter),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            }),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              'Contact Us:',
              style: TextStyle(fontSize: 35, color: Colors.black),
            )),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(
              '9849028037\n'
              '9861946478',
              style: TextStyle(fontSize: 29, color: Colors.black),
            )),
      ],
    ));
  }
}
