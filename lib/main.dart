import 'package:flutter/material.dart';
import 'package:flutter_firebase_architecture/ui/screens/events_screen.dart';
import 'package:flutter_firebase_architecture/ui/screens/friends_screen.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => EventsScreen(),
        FriendsScreen.routeName: (context) => FriendsScreen(),
        EventsScreen.routeName: (context) => EventsScreen(),
      },
    );
  }
}
