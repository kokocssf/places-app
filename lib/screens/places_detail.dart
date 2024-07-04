import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.plece});
  final place plece;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plece.title)),
      body: Center(child: Text(plece.title,
      
       style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onBackground),
      
      ),),
    );
  }
}
