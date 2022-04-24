import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const GeoLoc());
}

class GeoLoc extends StatefulWidget {
  const GeoLoc({Key? key}) : super(key: key);

  @override
  State<GeoLoc> createState() => _GeoLocState();
}

double? lat;
double? lon;

class _GeoLocState extends State<GeoLoc> {
// Task 3 Override
  @override
  initState() {
    checkpremissionStatus();
    getLocation();
    super.initState();
  }

  // Task 1 GeoLoc
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print('Called');
    setState(() {
      lat = position.latitude;
      lon = position.longitude;
    });
    print(position.latitude);
    print(position.longitude);
  }

  // Task 2 checkPermissionStatus
  void checkpremissionStatus() async {
    LocationPermission Permissions = await Geolocator.checkPermission();
    if (Permissions == LocationPermission.denied) {
      print("Permission Denied");
    } else {
      print("Permission Allowed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task 1,2,3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  getLocation();

                  checkpremissionStatus();
                },
                icon: Icon(Icons.location_on),
              ),
              Text(
                '$lat',
              ),
              Text(
                '$lon',
              )
            ],
          ),
        ),
      ),
    );
  }
}
