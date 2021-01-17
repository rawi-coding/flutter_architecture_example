import 'dart:async';

import 'package:flutter_firebase_architecture/data/entities/event.dart';
import 'package:flutter_firebase_architecture/data/firestore/event_dao.dart';

class EventService {
  static Stream<List<Event>> eventsStream() =>
      EventDao.eventsStream().transform(_eventsTransformer);

  static void add(Event event) => EventDao.add(event.toJson());

  static final _eventsTransformer =
      StreamTransformer<List<Map>, List<Event>>.fromHandlers(
          handleData: (data, sink) {
    var events = data.map((map) => Event.fromMap(map)).toList();
    return sink.add(events);
  });
}
