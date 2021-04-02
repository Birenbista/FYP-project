import 'package:flutter/material.dart';
import 'package:fyp_app/api/api_service.dart';
import 'package:fyp_app/model/login_model.dart';

import 'package:fyp_app/pages/Homepage.dart';
import 'package:fyp_app/pages/Signup.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPage();
  }
}

class LoginPage extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //final _formKey = GlobalKey<FormState>();

  LoginRequestModel requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Login Page'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Assets/Back_image.jpg"),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.darken))),
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'Assets/logo.png',
                      width: 150,
                      height: 100,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Royal Enfield Bike Servicing',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    )),
                Container(
                  //key: _formKey,
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (input) => requestModel.username = input,
                    /*validator: (String value) {
                      if (value.isempty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },*/
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'User Name',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (input) => requestModel.password = input,
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                /*FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.redAccent,
                  child: Text('Forgot Password??'),
                ),*/
                Container(
                    height: 50,
                    padding: EdgeInsets.all(1),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 40),
                      ),
                      onPressed: () {
                        /*if (_formKey.currentState.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        }*/
                       
                        requestModel.username=usernameController.text;
                        requestModel.password=passwordController.text;
                        APIService api =new APIService();
                        api.login(requestModel).then((value) {
                          if (value.validate){
                             Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                            
                          }
                          else{
                            print("No user found");
                          }
                          });
                        
                        //print(requestModel.toJson());
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Does not have account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    FlatButton(
                      textColor: Colors.black,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }

  /*bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }*/
}
