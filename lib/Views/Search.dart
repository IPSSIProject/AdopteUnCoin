import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ipssi_flutter_firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase',
      home: SearchAdverts(),
    );
  }
}

class SearchAdverts extends StatelessWidget {
  const SearchAdverts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 127, 255),
        title: const Center(child:Text("Annonces")),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Adverts').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document) {
              return GestureDetector(
                  onTap: () => print(document['price']) ,
                  child:Card(
                    child:Column(
                      children: [ ListTile(
                  leading:const CircleAvatar(backgroundColor: Colors.red),
                    title: Text(document['title']),
                    subtitle:Text(document['description']),
                        trailing: Text('${document["price"]} €')
                    ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                        TextButton(
                        child: const Text("BUY"),
                onPressed: () {/* ... */},
              ),]
                        )
                    ])));
            }).toList(),
          );
        },
      ),
    );
  }
}
