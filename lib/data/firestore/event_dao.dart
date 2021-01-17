import 'package:flutter_firebase_architecture/data/entities/event.dart';

class EventDao {
  static Stream<List<Map>> eventsStream() => Stream.value(List.of([
        Event.from('Event 1', 'Strasse 2, Bern', DateTime.now()).toJson(),
        Event.from('Event 2', 'Weg 10, Wabern', DateTime.now()).toJson(),
        Event.from('Event 3', 'Pfad 2, Utzenstorf', DateTime.now()).toJson(),
      ]));

  static add(Map<String, dynamic> json) {
    // would write to firestore
  }
}
