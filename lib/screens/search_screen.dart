import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('What are you looking for?',
          ),
          Container(
            decoration: BoxDecoration(
              color: Styles.backgroundColor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Text('Airline ticket', style: Styles.headlineStyle, ),
                Text('Hotels'),
              ],
            ),
          )
        ],
      ),
    );
  }
}