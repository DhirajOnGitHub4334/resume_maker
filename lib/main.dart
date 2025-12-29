import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:resume_maker/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

import 'Database/hive_adapter.dart';
import 'MyApp/my_app.dart';
import 'Database/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //Init Hive
  await Hive.initFlutter();
  HiveAdapter.registerAdapter();

  // Open boxes
  await HiveService().init();

  //Used To remove # From URL
  setPathUrlStrategy();

  runApp(MyApp());
}
