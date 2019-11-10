import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceView extends StatelessWidget {
  

  final _placeData;

  PlaceView(context, this._placeData);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_placeData.name),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            // child: Text(_placeData.image),
            child: Image(image: NetworkImage(_placeData.image)),
          ),
          Expanded(flex: 3, child: Text(_placeData.description)),
          
        ],
      ),
    );
  }
}
