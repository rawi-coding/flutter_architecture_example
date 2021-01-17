import 'dart:async';

import 'package:flutter_firebase_architecture/data/entities/friend.dart';
import 'package:flutter_firebase_architecture/data/firestore/friend_dao.dart';

class FriendService {
  static Stream<List<Friend>> friendsStream() => FriendDao.friendsStream();

  static void add(Friend friend) => FriendDao.add(friend);
}
