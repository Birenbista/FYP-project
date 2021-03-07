import 'package:flutter/material.dart';
import 'package:fyp_app/Main_Drawer.dart';
import 'package:intl/intl.dart';

class Booking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookingPage();
  }
}

class BookingPage extends State<Booking> {
  TextEditingController bikemodelController = TextEditingController();
  TextEditingController bikenumberController = TextEditingController();

  List<DropdownMenuItem<String>> listDrop = [];
  DateTime _selectedDate;

  List<String> drop = ["item 1", "item 2", "item 3", "item 4", "item 5"];
  String selected = null;

  void loadData() {
    listDrop = [];
    listDrop = drop
        .map((val) => new DropdownMenuItem<String>(
              child: new Text(val),
              value: val,
            ))
        .toList();

    /*listDrop.add(DropdownMenuItem(
      child: new Text('Royal Balaju'),
      value: "1",
    ));
    listDrop.add(DropdownMenuItem(
      child: new Text('Royal Sankhamul'),
      value: "2",
    ));
    */
  }

  //DateTime _currentdate = new DateTime.now();
  /*Future<Null> _selectdate(BuildContext context) async {
    final DateTime _selecdate = await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2021));
  }*/
  void _presentdatepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2022),
    ).then((value) {
      if (value == null) {
        return;
      }
      _selectedDate = value;
    });
  }

  Widget build(BuildContext context) {
    //String _formateddate = new DateFormat.yMd().format(_selectedDate);

    loadData();
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
                  "Fill up the following details.",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: bikemodelController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bike Model',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: bikenumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bike Number',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.vertical()),
              child: DropdownButton(
                  value: selected,
                  items: listDrop,
                  hint: new Text('Select Service center'),
                  iconSize: 50,
                  isExpanded: true,
                  elevation: 10,
                  onChanged: (value) {
                    selected = value;
                    setState(() {});
                  }),
            ),
            Card(
                elevation: 1,
                margin: const EdgeInsets.all(5),
                color: Colors.white,
                child: ListTile(
                  title: Text(_selectedDate == null
                      ? "Select a date"
                      : DateFormat.yMd().format(_selectedDate)),
                  trailing: IconButton(
                    onPressed: () {
                      _presentdatepicker();
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                )),
            Card(
              margin: const EdgeInsets.all(5),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  "Must reach service centre before 11 A.M in the booked date.",
                  style: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                leading: Icon(Icons.warning),
              ),
            ),
            Container(
                height: 100,
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.grey,
                  child: Text(
                    'Book Service',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
