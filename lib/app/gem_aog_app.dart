import 'package:flutter/material.dart';
import 'package:gem_app/ui/home.dart';

import '../main.dart';

class GemApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AOG GEM',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(title: 'GEM App Home Page'),
    );
  }
}