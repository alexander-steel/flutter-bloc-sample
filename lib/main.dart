import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/ui/page/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Future<void> startApp() async {
    runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ));
  }

  runZonedGuarded(() {
    startApp();
  }, (Object error, StackTrace stack) {
    ///Firebase Crashlytics 導入予定
  });
}