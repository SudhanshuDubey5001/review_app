import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:review_app/pages/Wrapper.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeFirebase();
}

void initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("initialized!!");

  try {
    runApp(const MaterialApp(
      home: Wrapper(),
    ),
  );
  }catch(e){
    print(e.toString());
  }
}