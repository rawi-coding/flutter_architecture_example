import 'dart:async';

import 'package:flutter_firebase_architecture/data/entities/event.dart';
import 'package:flutter_firebase_architecture/data/entities/friend.dart';

final eventsTransformer =
    StreamTransformer<List<Map>, List<Event>>.fromHandlers(
        handleData: (data, sink) {
  var events = data.map((map) => Event.fromMap(map)).toList();
  return sink.add(events);
});

final friendsTransformer =
    StreamTransformer<List<Map>, List<Friend>>.fromHandlers(
        handleData: (data, sink) {
  var friends = data.map((map) => Friend.fromMap(map)).toList();
  return sink.add(friends);
});
