import 'package:firedart/firestore/firestore.dart';
import 'package:flutter/material.dart';

import 'home.dart';

const appKey = "AIzaSyAdXDDLckyRbOjJ5x532l5GB5bF4Nchf6Q";
const projectId = "firestore-test-on-platform";
void main() {
  Firestore.initialize(projectId);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireDart CRUD Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomeScreen(),
    );
  }
}


/*const firebaseConfig = {

  apiKey: "AIzaSyAdXDDLckyRbOjJ5x532l5GB5bF4Nchf6Q",

  authDomain: "firestore-test-on-platform.firebaseapp.com",

  projectId: "firestore-test-on-platform",

  storageBucket: "firestore-test-on-platform.appspot.com",

  messagingSenderId: "370148173145",

  appId: "1:370148173145:web:7c8d44cc3c09c342989848"

};
*/
