import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// user class constructor

class AppUser {
  //Attributes
  late String id;
  late String firstname;
  late String lastname;
  late String mail;
  String? avatar;
  Map<String, dynamic>? favorite;

  // Constructors

  AppUser(DocumentSnapshot user) {
    String? tmp;
    id = user.id;
    Map<String, dynamic> userData = user.data() as Map<String, dynamic>;
    firstname = userData['firstname'];
    lastname = userData['lastname'];
    mail = userData['email'];
    tmp = userData['avatar'];
    favorite = userData['avatar'];

    if (tmp == null) {
      avatar = 'https://firebasestorage.googleapis.com/v0/b/ipssi-flutter.appspot.com/o/avatars%2Fuser-empty.png?alt=media&token=3010085c-a451-4423-9fb5-0bce0089f316';
    }
    else {
      avatar = tmp;
    }
    //favorite = userData['favorite'];
  }
}