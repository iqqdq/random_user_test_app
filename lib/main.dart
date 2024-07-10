import 'package:flutter/material.dart';
import 'package:random_user_test_app/injection_container.dart';
import 'package:random_user_test_app/random_user_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const RandomUserApp());
}
