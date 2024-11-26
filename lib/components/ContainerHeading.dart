import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class ContainerHeading extends StatelessWidget {
  final String string ;
  const ContainerHotels({
    super.key, required this.string
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(string,
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
