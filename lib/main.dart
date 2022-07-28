import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:symphony_delivery_app/app.dart';
import 'package:symphony_delivery_app/init.dart';


Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
   
  await init();
  runApp(const MyApp());
}
 