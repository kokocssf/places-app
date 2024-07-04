import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app6/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier,List<place>>((ref) => UserPlacesNotifier(),);
