
import 'package:cloud_firestore/cloud_firestore.dart';

class Place {
  final String description;
  final String name;
  final String image;
  final DocumentReference reference;
  final GeoPoint location;

  Place.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['description'] != null),
        assert(map['name'] != null),
        assert(map['location'] != null),
        assert(map['image'] != null),
        description = map['description'],
        location = map['location'],
        image = map['image'],
        name = map['name'];

  Place.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Attraction $name";
}