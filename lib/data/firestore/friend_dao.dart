import 'package:flutter_firebase_architecture/data/entities/friend.dart';

class FriendDao {
  static Stream<List<Map>> friendsStream() => Stream.value(List.of([
        Friend.from('Hans Müller', 'test1').toJson(),
        Friend.from('Sarah Burger', 'test2').toJson(),
      ]));

  static add(Map<String, dynamic> json) {
    // would write to firestore
  }
}
