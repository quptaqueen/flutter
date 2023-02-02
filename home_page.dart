import 'package:car_rental/maindrawer.dart';
import 'package:flutter/material.dart';
import 'bottomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("welcome to car rental")),
      body: Center(
        child: Container(
          child: const Text("homepage"),
        ),
      ),
      drawer: const MainDrawer(),
      bottomSheet: const Widget029(),
    );
  }
}
