import 'package:flutter/material.dart';

/*class userProfile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
      child: Text(
      'Hello World',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 32,
        color: Colors.black87,
      ),
    ),
    ),
    );

  }
}*/

class userProfile extends StatelessWidget{
  /*@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
      ),
    );
  }*/

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(

          title: const Center(
            child: Text('Page mon profil'),
          ),
        ),
        body: Column(
          children:  [
            const Center(),
            const Padding(
                padding: EdgeInsets.all(16)
            ),
            const Icon(
              Icons.account_circle_sharp,
              size: 120,
              color: Colors.black12,
            ),
            const Text(
                'Votre profil',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 0),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nom',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 0),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Prénom',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 0),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Adresse mail',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 0),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Mot de passe',
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 0),
              child:
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },

                child: const Text(
                  'Modifier mon profil',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*body: const Center(
          child: Icon(
              Icons.account_circle_sharp,
              size: 150,
          ),
        ),*/


