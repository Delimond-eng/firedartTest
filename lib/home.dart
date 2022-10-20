import 'dart:convert';

import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userCollection = Firestore.instance.collection("users");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firedart Testing with desktop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
              ),
              onPressed: () async {
                await userCollection.get().then((value) {
                  debugPrint(jsonEncode(value.toString()));
                });
              },
              child: const Text("Get data"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
              ),
              onPressed: () async {
                await userCollection
                    .add({"name": "Gaston", "lastname": "Delimond"});
              },
              child: const Text("Insert data"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
              ),
              onPressed: () async {
                await userCollection.document("6t4ek6ekkvONBzMAJELi").update(
                    {"name": "Lionnel", "lastname": "nawej"}).then((value) {
                  debugPrint("success");
                });
              },
              child: const Text("Update data"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                backgroundColor: Colors.pink,
              ),
              onPressed: () async {
                await userCollection
                    .document("users")
                    .delete()
                    .then((value) => debugPrint("success !"));
              },
              child: const Text("Delete data"),
            ),
          ],
        ),
      ),
    );
  }
}
