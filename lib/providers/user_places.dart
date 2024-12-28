import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image, location: location);

    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);

//  The  UserPlacesNotifier  class extends  StateNotifier  and manages a list of  Place  objects. It has a single method  addPlace  that adds a new place to the list.
//  The  userPlacesProvider  is a  StateNotifierProvider  that creates a new instance of  UserPlacesNotifier  when it's first accessed.
//  Now, let's create a new screen where the user can add a new place.
//  Create a new file  add_place_screen.dart  in the  lib/screens  directory and add the following code:
