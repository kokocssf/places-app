import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.plece});
  final place plece;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plece.title),),
      body:Stack(children: [
        Image.file(plece.image,fit: BoxFit.cover,height: double.infinity,width: double.infinity,)
      ],)
    );
  }
}
