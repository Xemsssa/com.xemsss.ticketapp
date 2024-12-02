import 'package:flutter/material.dart';
import 'package:test_app/widgets/NewsBlockWidget.dart';
import 'package:test_app/widgets/NewsBlockWidget2.dart';
import 'package:test_app/widgets/NewsBlockWidget3.dart';

class Allupcomingnews extends StatelessWidget {
  const Allupcomingnews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
         child: ListView(
          children: [
            // Text("Allupcomingnews"),
            NewsBlockWidget(size: size),
            NewsBlockWidget2(size: size),
            NewsBlockWidget3(size: size),
          ],
        ),
      ),
    );
  }
}
