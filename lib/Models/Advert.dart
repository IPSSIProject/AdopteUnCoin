import 'package:cloud_firestore/cloud_firestore.dart';

class Advert {

  // Attributes
  late Timestamp date;
  late String title;
  late int price;
  late String seller;
  String? picture;
  String? description;

  // Constructors
  Advert(DocumentSnapshot advertData) {
    date = advertData['date'];
    title = advertData['title'];
    price = advertData['price'];
    seller = advertData['seller'];
    picture = advertData['picture'];
    description = advertData['description'];
  }
}