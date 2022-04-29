import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 24;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Catalog App"),
        ),
      ),
      body: Center(
        child: Text("Hello World day $days"),
      ),
      drawer: const Drawer(),
    );
  }
}
