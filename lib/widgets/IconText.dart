import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({
    super.key, required this.icon, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // child:  TextField(
      //   decoration: InputDecoration(
      //   ),
      // ),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Icon(icon, color: Styles.primaryColor),
              const SizedBox(width: 10,),
              Text(text, style: Styles.headlineStyle3)
            ],
          )
      ),
    );
  }
}