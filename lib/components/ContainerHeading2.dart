import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';


class ContainerHeading2 extends StatelessWidget {
  final String nameRoute;
  final String route;
  const ContainerHeading2({
    super.key, required this.route, required this.nameRoute
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(nameRoute,
          style: Styles.headlineStyle2,),
        InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Alltickets()));
            Navigator.pushNamed(context, route);
          },
          child: Text('View All',
            style: Styles.headlineStyle4,),
        ),
      ],
    );
  }
}

