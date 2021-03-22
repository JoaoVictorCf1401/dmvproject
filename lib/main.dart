import 'dart:math';

import 'package:dmvtreino/home.dart';
import 'package:flutter/material.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: Colors.deepOrange,
  accentColor: Colors.deepOrange
);

void main() {
  runApp(MaterialApp(
    title: 'DMV Treinos',
    home: Home(),
    theme: temaPadrao,
    debugShowCheckedModeBanner: false,

  ));
}

