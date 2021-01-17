import 'dart:async';

import 'package:flutter_firebase_architecture/data/entities/event.dart';
import 'package:flutter_firebase_architecture/data/firestore/event_dao.dart';

class EventService {
  static Stream<List<Event>> eventsStream() => EventDao.eventsStream();

  static void add(Event event) => EventDao.add(event);
}
