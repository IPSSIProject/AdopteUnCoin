import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ipssi_flutter_firebase/Models/Advert.dart';

class AdvertController {
  final auth = FirebaseAuth.instance;
  final fireAdverts = FirebaseFirestore.instance.collection('Adverts');
  final storage = FirebaseStorage.instance;
  
  Future <Advert> getAdvert(String uid) async {
    DocumentSnapshot snapshot = await fireAdverts.doc(uid).get();
    print(snapshot);
    return Advert(snapshot);
  }

  Future <List<Advert>> getAllAdverts() async {
    final QuerySnapshot snapshot = await fireAdverts.get();
    final adverts = snapshot.docs.map((item) => Advert(item)).toList();

    return adverts;
  }

  String getId() {
    return auth.currentUser!.uid;
  }

  addUser(String uid , Map<String, dynamic> map) {
    fireAdverts.doc(uid).set(map);
  }

  updateUser(String uid , Map<String, dynamic> map) {
    fireAdverts.doc(uid).update(map);
  }

  deleteUser(String uid){
    fireAdverts.doc(uid).delete();
  }
}