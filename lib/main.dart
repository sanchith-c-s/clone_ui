import 'dart:ffi';

import 'package:clone_ui/clone.dart';
import 'package:clone_ui/clone2.dart';
import 'package:clone_ui/float.dart';
import 'package:clone_ui/home.dart';
import 'package:clone_ui/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(brightness: Brightness.light),
        home: Clone2());
  }
}
