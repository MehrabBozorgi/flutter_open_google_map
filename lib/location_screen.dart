import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {


  Future googleMap() async {
    String googleUrl =
        "https://www.google.com/maps/search/?api=1&query= 32.4279,53.6880";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else
      throw ("Couldn't open google maps");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,


        ),
        body: Center(
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.location_on_rounded,size: 150,)
            ),
            onTap: () {
              googleMap();
            },
          ),
        ),
      ),
    );
  }
}
