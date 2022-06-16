import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> data = ["data1", "data2", "data3", "data4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Annonces"),
        ),
        body: ListView.builder(
          // ignore: avoid_types_as_parameter_names
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 185, 37, 37),
                ),
                title: const Text("Titre des annonces"),
                subtitle: Text(data[index]),
              ),
            );
          },
          itemCount: data.length,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
