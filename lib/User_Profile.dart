import 'package:flutter/material.dart';
import 'package:fyp_app/Main_Drawer.dart';

class UserProfile extends StatelessWidget {
  @override
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                ),
                Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.black12, Color.fromRGBO(0, 12, 12, 1)])),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email Address',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
