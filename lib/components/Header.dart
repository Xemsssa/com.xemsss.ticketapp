
import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Good Morning',
            style: Styles.headlineStyle3,),
          const SizedBox(height: 10,),
          Text('Book Tickets',
              style: Styles.headlineStyle
          )
        ]
    );
  }
}