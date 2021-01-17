import 'package:flutter_firebase_architecture/data/entities/friend.dart';
import 'package:flutter_firebase_architecture/data/transformers/transformers.dart';

class FriendDao {
  static Stream<List<Friend>> friendsStream() => Stream.value(List.of([
        Friend.from('Hans Müller', 'test1').toJson(),
        Friend.from('Sarah Burger', 'test2').toJson(),
      ])).transform(friendsTransformer);

  static add(Friend friend) {
    // would write to firestore
  }
}
