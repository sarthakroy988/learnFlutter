import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 23;

    return MaterialApp(
      home: Material(
        child: Center(
          child: Text("Hello World day $days"),
        ),
      ),
    );
  }
}
