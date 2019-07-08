import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //asm l app fe l multi screen
    title: 'Heroes',
    //loon l app bar nafso wel base color ba3 l application nafso
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomePage(),
  ));
}
