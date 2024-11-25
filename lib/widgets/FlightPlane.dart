import 'package:flutter/material.dart';

class FlightPlane extends StatelessWidget {
  const FlightPlane({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        SizedBox(
          height: 24,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(( constraints.constrainWidth()/6).floor(), (index) => SizedBox(width: 3,height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),)),
              );
            },
          ),
        ),
        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white, size: 30),)),
      ]
    );
  }
}
