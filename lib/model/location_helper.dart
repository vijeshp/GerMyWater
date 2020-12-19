import 'package:geolocator/geolocator.dart';

class LocationHelper {

  static void getCurrentPosition () async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}