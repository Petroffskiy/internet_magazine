import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/core/application.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';


// FirebaseApp.instance;
// DefaultFirebaseOptions.currentPlatform;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Application());
  await Hive.initFlutter();

}
