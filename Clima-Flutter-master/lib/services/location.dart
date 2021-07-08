import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0.0, longitude = 0.0;
  void getCurrentLocation() async {
    print("hi");
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}

// api key: 755b885436a58718240a542b0814d778
