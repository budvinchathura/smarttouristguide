import 'package:flutter/material.dart';
import './side_drawer.dart';
import 'package:firebase_database/firebase_database.dart';

class FirstScreen extends StatelessWidget {
  final databaseReference = FirebaseDatabase.instance.reference();

  void getData() {
    databaseReference.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value['locations'].toString()}');
    });
  }

  void createRecord() {
    databaseReference.child("locations").child('2').set({
      'name': 'location 2',
      'description': 'desc on loc 2',
      'location': {'lat': 10, 'lng': 20}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("go to 2nd page"),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            RaisedButton(
              child: Text('Create Record'),
              onPressed: () {
                createRecord();
              },
            ),
            RaisedButton(
              child: Text('View Record'),
              onPressed: () {
                getData();
              },
            )
          ],
        ),
      ),
    );
  }
}
