import 'package:flutter/material.dart';
import 'package:fyp_app/pages/Main_Drawer.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingPage();
  }
}

class SettingPage extends State<Settings> {
  //bool acceptTerms = false;
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
            child: Column(
          children: <Widget>[
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(5),
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.edit),
              ),
            ),
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.mail_outline, color: Colors.blueGrey),
                    title: Text("Change Email"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change email
                    },
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.blueGrey.shade100,
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle, color: Colors.blueGrey),
                    title: Text("Change Username"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change username
                    },
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.blueGrey.shade100,
                  ),
                  ListTile(
                    leading: Icon(Icons.lock_outline, color: Colors.blueGrey),
                    title: Text("Change Password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change password
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text("Notification settings",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SwitchListTile(
              dense: true,
              activeColor: Colors.blueGrey,
              contentPadding: const EdgeInsets.all(15),
              value: true,
              //value: acceptTerms,
              title: Text(
                "Recieve notifications",
                style: TextStyle(fontSize: 20),
              ),
              onChanged: (bool value) {
                setState(() {
                  // acceptTerms = value;
                });
              },
            ),
            SwitchListTile(
              dense: true,
              activeColor: Colors.blueGrey,
              contentPadding: const EdgeInsets.all(10),
              value: true,
              //value: acceptTerms,
              title: Text(
                "Recieve offer notifications",
                style: TextStyle(fontSize: 20),
              ),
              onChanged: (bool value) {
                setState(() {
                  // acceptTerms = value;
                });
              },
            ),
            SwitchListTile(
              dense: true,
              activeColor: Colors.blueGrey,
              contentPadding: const EdgeInsets.all(10),
              value: true,
              //value: acceptTerms,
              title: Text(
                "Recieve App Updates",
                style: TextStyle(fontSize: 20),
              ),
              onChanged: (bool value) {
                setState(() {
                  //  acceptTerms = value;
                });
              },
            )
          ],
        )));
  }
}
