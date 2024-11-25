import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Upcoming Flight",
            style: Styles.headlineStyle2,),
          InkWell(
            onTap: () {
              print('You tapped View all');
            },
            child: Text('View All',
              style: Styles.headlineStyle4,),
          ),
        ],
      ),
    );
  }
}
