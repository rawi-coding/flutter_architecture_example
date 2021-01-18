import 'package:flutter/material.dart';
import 'package:flutter_firebase_architecture/data/entities/event.dart';
import 'package:flutter_firebase_architecture/domain/providers/providers.dart';
import 'package:flutter_firebase_architecture/domain/service/date_service.dart';
import 'package:flutter_firebase_architecture/ui/screens/friends_screen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class EventsScreen extends HookWidget {
  static const String routeName = 'events';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        actions: [
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () =>
                Navigator.pushNamed(context, FriendsScreen.routeName),
          ),
        ],
      ),
      body: _buildContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildContent() {
    AsyncValue<List<Event>> events = useProvider(eventsStreamProvider);
    return events.when(
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => const Text('Oops'),
      data: (events) => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            title: Text(event.title),
            subtitle: Text(DateService.format(event.started)),
          );
        },
      ),
    );
  }
}
