import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/providers/PreferenceUtils.dart';

class DatabaseMethods {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<dynamic> addUserInfo(Usermodel userData) {
    return users
        .add(userData.toJson())
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  Future<dynamic> UpdateuserInfo(Usermodel userData) async {
    QuerySnapshot _querySnapshot = await users.where("email",isEqualTo: FirebaseAuth.instance.currentUser?.email).get();
    if(_querySnapshot.docs.isNotEmpty) {
      print(_querySnapshot.docs[0].reference);
      return await _querySnapshot.docs[0].reference.update(userData.toJson()).then((value) => print("User Updated")).catchError((error) => print("Failed to update user: $error"));
    }
  }

     getUserInfo() async {
    return FirebaseFirestore.instance
        .collection("users")
        .where("email", isEqualTo: FirebaseAuth.instance.currentUser?.email)
        .get()
        .catchError((e) {
      if (kDebugMode) {
        print(e.toString());
      }
    });
  }

  getAllUserInfo(String userName) async {
    return FirebaseFirestore.instance
        .collection("users")
        .where("userName", isEqualTo: userName)
        .where("UserId", isNotEqualTo: PreferenceUtils.getString(keyUserId))
        .get()
        .catchError((e) {
      if (kDebugMode) {
        print(e.toString());
      }
    });
  }

  Future<bool?> addChatRoom(chatRoom, chatRoomId) async {
    await FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .set(chatRoom)
        .catchError((e) {
      if (kDebugMode) {
        print(e);
      }
    });
  }

  getChats(String chatRoomId, int limit) async {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .collection("chats")
        .orderBy('time', descending: true)
        .snapshots();
  }

  deleteChat(String chatRoomId) {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .collection("chats")
        .get()
        .then((value) {
      value.docs.forEach((element) async {
        await FirebaseFirestore.instance
            .collection("chatRoom")
            .doc(chatRoomId)
            .collection("chats")
            .doc(element.id)
            .delete()
            .then((value) {
          if (kDebugMode) {
            print("Success!");
          }
        });
      });
    });
  }

  deleteChats(String chatRoomId) async {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .delete();
  }

  Future<void> sendMessage(String chatRoomId, chatMessageData) async {
    await FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .collection("chats")
        .add(chatMessageData)
        .catchError((e) {
      if (kDebugMode) {
        print(e.toString());
      }
    });
  }

  getUserChats(String itIsMyID) async {
    if (kDebugMode) {
      print("itIsMyID $itIsMyID");
    }
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .where('userIds', arrayContains: itIsMyID)
        .snapshots();
  }
}


