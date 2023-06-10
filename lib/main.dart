import 'package:flutter/material.dart';
import 'package:wander_hub/Screens/Feed.dart';
import 'package:wander_hub/Screens/add_trip.dart';
import 'package:wander_hub/Screens/authenticate.dart';
import 'package:wander_hub/Screens/profile.dart';

void main() => runApp(MaterialApp(initialRoute: '/addTrip', routes: {
      '/': (context) => Authenticate(),
      '/feed': (context) => Feed(),
      '/userProfile': (context) => UserProfile(),
      // '/addTrip': (context) => AddTrip(currentUser: null),
      '/addTrip': (context) => AddTrip(),
    }));
