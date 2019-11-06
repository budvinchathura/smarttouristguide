import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child:Column(
          children: [
            RaisedButton(
              child: Text("go back to 1st page"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ) ,
      ),
    );
  }
}