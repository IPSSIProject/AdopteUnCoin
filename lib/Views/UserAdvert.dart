import 'package:flutter/material.dart';
import 'package:ipssi_flutter_firebase/Models/Advert.dart';
import '../Controllers/AdvertController.dart';

class UserAdvert extends StatefulWidget {
  const UserAdvert({Key? key}) : super(key: key);

  @override
  State<UserAdvert> createState() => _UserAdvertState();
}

class _UserAdvertState extends State<UserAdvert> {
  late Future<List<Advert>> data;

  @override
  void initState() {
    super.initState();
    data = AdvertController().getCurrentUserAdverts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Advert>>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: snapshot.data!.map((document) {
                  return GestureDetector(
                    onTap: () => print(document.price) ,
                    child:Card(
                      child:Column(
                        children: [
                          ListTile(
                            leading:const CircleAvatar(backgroundColor: Colors.red),
                            title: Text(document.title),
                            subtitle:Text(document.description!),
                            trailing: Text('${document.price} €')
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text("BUY"),
                                onPressed: () {/* ... */},
                              ),
                            ]
                          )
                        ]
                      )
                    )
                  );
                }).toList(),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          }
        )
      )
    );
  }
}
