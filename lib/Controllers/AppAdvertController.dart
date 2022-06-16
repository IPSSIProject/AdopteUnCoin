import "dart:typed_data";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:ipssi_flutter_firebase/Models/AppAdvert.dart';

class AppAdvertController{
  final adverts=FirebaseFirestore.instance.collection("Adverts");
  final storage=FirebaseStorage.instance;
  
}