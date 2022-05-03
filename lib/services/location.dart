import 'package:geolocator/geolocator.dart';

class Location{
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation () async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;

      //Andijan
      // latitude = 40.81982291388836;
      // longitude = 72.28187048916564;
    } catch (e) {
      print(e);
    }
  }
}

