import 'package:flutter_firebase_architecture/data/entities/event.dart';
import 'package:flutter_firebase_architecture/data/entities/friend.dart';
import 'package:flutter_firebase_architecture/domain/service/event_service.dart';
import 'package:flutter_firebase_architecture/domain/service/friend_service.dart';
import 'package:hooks_riverpod/all.dart';

final eventsStreamProvider = StreamProvider.autoDispose<List<Event>>((ref) {
  return EventService.eventsStream();
});

final friendsStreamProvider = StreamProvider.autoDispose<List<Friend>>((ref) {
  return FriendService.friendsStream();
});
