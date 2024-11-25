import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class ContainerHotels extends StatelessWidget {
  const ContainerHotels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hotels",
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
