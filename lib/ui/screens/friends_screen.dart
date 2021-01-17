import 'package:flutter/material.dart';
import 'package:flutter_firebase_architecture/data/entities/friend.dart';
import 'package:flutter_firebase_architecture/domain/providers/providers.dart';
import 'package:hooks_riverpod/all.dart';

class FriendsScreen extends ConsumerWidget {
  static const String routeName = 'friends';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        actions: [
          IconButton(
            icon: Icon(Icons.event),
            onPressed: () =>
                Navigator.pushNamed(context, FriendsScreen.routeName),
          ),
        ],
      ),
      body: _buildContent(watch),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildContent(ScopedReader watch) {
    AsyncValue<List<Friend>> friends = watch(friendsStreamProvider);
    return friends.when(
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => const Text('Oops'),
      data: (friends) => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return ListTile(
            title: Text(friend.fullName),
            subtitle: Text(friend.userName),
          );
        },
      ),
    );
  }
}
