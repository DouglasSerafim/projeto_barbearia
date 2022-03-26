// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:trabalho_flutter/pages/login/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Barber Shop',
    routes: {
      '/login': (context) => LoginPage(),
    },
    initialRoute: '/login',
  ));
}
