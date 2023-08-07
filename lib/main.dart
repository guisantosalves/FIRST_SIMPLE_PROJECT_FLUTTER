import 'package:flutter/material.dart';
import 'package:first_app/gradiente_container.dart';
// when we call MaterialApp() we create a widget -> generally passes in runApp
// when we do someFunc({name1, name2}) we can invoke that function using that names
// like someFunc(name1: 2, name2: 3);

// scaffold -> esqueleto
// scaffold gives like a complete screen to edit
// widget tree -> MaterialApp -> Scaffold -> (whatever here)
// dart data type https://dart.dev/language/built-in-types
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          // backgroundColor: Color.fromARGB(255, 47, 5, 120),
          body: GradientContainer(colors: [
        Color.fromARGB(255, 26, 2, 30),
        Color.fromARGB(255, 45, 7, 50)
      ])),
    ),
  );
}
