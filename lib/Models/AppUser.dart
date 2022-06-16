
import 'package:cloud_firestore/cloud_firestore.dart';

// user class constructor

class AppUser {

  //Attributes
  late String id;
  late String firstName;
  late String lastName;
  late String email;
  Map<String, dynamic>? favorite;
  String? avatar;

  // Constructors

  AppUser(DocumentSnapshot user) {
    Map<String, dynamic> userData = user.data() as Map<String, dynamic>;
    firstName = userData['firstName'];
    lastName = userData['lastName'];
    email = userData['email'];
    avatar = userData['profilePicture'];
    favorite = userData['favorite'];

    // Same as if (avatar == null)
    avatar ??= "https://firebasestorage.googleapis.com/v0/b/ipssi-flutter.appspot.com/o/user-empty.png?alt=media&token=6de1d312-ec83-46bb-8e8e-2996541f598a";
  }
}