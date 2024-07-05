import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app6/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title,File image) {
    final newPlace = place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier,List<place>>((ref) => UserPlacesNotifier(),);
