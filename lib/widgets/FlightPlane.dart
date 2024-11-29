import 'package:flutter/material.dart';

class FlightPlane extends StatelessWidget {
 final bool? isColor;
  const FlightPlane({
    super.key, this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        SizedBox(
          height: 30,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(( constraints.constrainWidth()/6).floor(), (index) => SizedBox(width: 3,height: 1, child: DecoratedBox(decoration: BoxDecoration(color: isColor == true ? Colors.white : Colors.blue)))),
              );
            },
          ),
        ),
        Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white, size: 30),)),
      ]
    );
  }
}
