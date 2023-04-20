import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helpcar/src/constants/constants.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';

class ConfirmServiceScreen extends StatefulWidget {
  const ConfirmServiceScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmServiceScreen> createState() => _ConfirmServiceScreenState();
}

class _ConfirmServiceScreenState extends State<ConfirmServiceScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  late LatLng currentPostion;
  bool showLoading = false;

  Future<void> requestLocationPermission() async {
    var status = await Permission.location.request();

    if (status.isGranted) {
      // Permission granted
    } else if (status.isDenied) {
      // Permission denied
    } else if (status.isPermanentlyDenied) {
      // Permission permanently denied, navigate to app settings
      openAppSettings();
    }
  }

  Future<LatLng> _getUserLocation() async {
    var position = await Geolocator.getCurrentPosition().then((value) {
      setState(() {
        showLoading = true;
        currentPostion = LatLng(value.latitude, value.longitude);
        currentLocation = currentPostion as LocationData?;
      });
    });
    return currentPostion;
  }

  Future<void> getCurrentLocation() async {
    requestLocationPermission();
    Location location = Location();

    GoogleMapController googleMapController = await _controller.future;

    location.getLocation().then((location) {
      currentLocation = location;
    });

    location.onLocationChanged.listen(
      (newLoc) {
        currentLocation = newLoc;

        googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                zoom: 13, target: LatLng(newLoc.latitude!, newLoc.longitude!)),
          ),
        );
        setState(() {});
      },
    );
    if (await Permission.locationWhenInUse.serviceStatus.isEnabled) {
      // Use location.
      if (await Permission.location.status.isGranted) {
        // _getUserLocation().then((value) {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => GetMyLocationPage(
        //           latLng: currentPostion,
        //         ),
        //       )).then((value) {
        //     setState(() {
        //       showLoading = false;
        //     });
        //   });
        // });
        debugPrint(currentPostion.toString());
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
          children: const [
            Text(
              'You should enable Location Permission',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        duration: const Duration(milliseconds: 2500),
        backgroundColor: Colors.black,
      ));
      openAppSettings();
    }
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track order",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: currentLocation == null
          ? const Center(
              child: Text("loading"),
            )
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                // target: sourceLocation,
                target: LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13,
              ),
              polylines: {
                Polyline(
                    polylineId: const PolylineId("route"),
                    points: polylineCoordinates,
                    color: primaryColor,
                    width: 5),
              },
              markers: {
                Marker(
                  markerId: const MarkerId("currentLocation"),
                  position: currentPostion,
                  // position: LatLng(
                  //     currentLocation!.latitude!, currentLocation!.longitude!)
                ),
                const Marker(
                  markerId: MarkerId("source"),
                  position: sourceLocation,
                ),
                const Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },
            ),
    );
  }
}
