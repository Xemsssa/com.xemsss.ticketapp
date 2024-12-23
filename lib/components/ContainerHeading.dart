import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class ContainerHeading extends StatelessWidget {
  final String string ;
  final VoidCallback? func;

  const ContainerHeading({
    super.key, required this.string, this.func
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(string,
          style: Styles.headlineStyle2,),
        InkWell(
          onTap: () {
            func;
            // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllTickets()));
          },
          child: Text('View All',
            style: Styles.headlineStyle4,),
        ),
      ],
    );
  }
}
