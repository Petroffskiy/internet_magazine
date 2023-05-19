import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_magazine/core/application.dart';
import 'package:internet_magazine/feature/domain/model/busket/save_product/save_product_model_domain.dart';
import 'package:internet_magazine/feature/domain/model/user_data/user_model_domain.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'firebase_options.dart';
import 'injection.dart' as inj;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  Hive.registerAdapter(User());
  Hive.registerAdapter(Busket());
  inj.init();
  runApp(const Application());
}
