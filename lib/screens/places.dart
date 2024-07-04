import 'package:app6/models/place.dart';
import 'package:app6/screens/add_place.dart';
import 'package:flutter/material.dart';

import '../widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your places"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) =>const AddPlaceScreen()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: const PlacesList(
        places: [],
      ),
    );
  }
}
