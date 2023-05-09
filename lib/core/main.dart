import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/core/application.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';

import 'firebase_options.dart';
import 'injection.dart' as inj;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Application());
  Hive.registerAdapter(User());
  await Hive.initFlutter();
  inj.init();
}
