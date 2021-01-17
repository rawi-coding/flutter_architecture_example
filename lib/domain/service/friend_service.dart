import 'dart:async';

import 'package:flutter_firebase_architecture/data/entities/friend.dart';
import 'package:flutter_firebase_architecture/data/firestore/friend_dao.dart';

class FriendService {
  static Stream<List<Friend>> friendsStream() =>
      FriendDao.friendsStream().transform(_friendsTransformer);

  static void add(Friend friend) => FriendDao.add(friend.toJson());

  static final _friendsTransformer =
      StreamTransformer<List<Map>, List<Friend>>.fromHandlers(
          handleData: (data, sink) {
    var friends = data.map((map) => Friend.fromMap(map)).toList();
    return sink.add(friends);
  });
}
