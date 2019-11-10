import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AcmView extends StatelessWidget {
  

  final _placeData;

  AcmView(context, this._placeData);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_placeData.name),
      ),
      body: Column(
        children: <Widget>[
          
          Expanded(flex: 3, child: Text(_placeData.address)),
          
        ],
      ),
    );
  }
}
