import 'dart:ffi';

import 'package:floor/floor.dart';
@entity
class Address {
  @primaryKey
  final int id;
  final String flat;
  final String street;
  final String additional;
  final double lat;
  final double long;

  Address(this.id, this.flat,this.street,this.additional,this.lat,this.long);
}
