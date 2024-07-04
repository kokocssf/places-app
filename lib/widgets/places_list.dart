import 'package:flutter/material.dart';

import '../models/place.dart';

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
              title: Text(
                places[index].title,
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onBackground),),
            ));
  }
}
