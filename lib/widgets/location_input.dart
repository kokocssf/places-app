import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {

Location? _pickedLocation ;
bool _isGettingLocation = false;


void _getCurrentLocation()async{
  Location location =  Location();

bool serviceEnabled;
PermissionStatus permissionGranted;
LocationData locationData;

serviceEnabled = await location.serviceEnabled();
if (!serviceEnabled) {
  serviceEnabled = await location.requestService();
  if (!serviceEnabled) {
    return;
  }
}

permissionGranted = await location.hasPermission();
if (permissionGranted == PermissionStatus.denied) {
  permissionGranted = await location.requestPermission();
  if (permissionGranted != PermissionStatus.granted) {
    return;
  }
}
setState(() {
  _isGettingLocation = true;
});


locationData = await location.getLocation();

setState(() {
  _isGettingLocation = false;
});

}


  @override
  Widget build(BuildContext context) {
 Widget  previewContent = Text(
            "no location choosen",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onBackground),
          );

if (_isGettingLocation){
  previewContent = const Center(child: CircularProgressIndicator(),);
}

    return Column(
      children: [
        Container(
          height: 70,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
          ),
          child:  previewContent
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: _getCurrentLocation,
              icon: Icon(Icons.location_city),
              label: const Text("get current location"),
            )
          ],
        )
      ],
    );
  }
}
