import 'package:flutter/material.dart';

import '../models/place.dart';
import '../screens/places_detail.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text("no places add yet"),
      );
    }
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(radius: 6,backgroundImage: FileImage(places[index].image),),
              title: Text(
                places[index].title,
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => PlaceDetailScreen(
                          plece: places[index],
                        )));
              },
            ));
  }
}
