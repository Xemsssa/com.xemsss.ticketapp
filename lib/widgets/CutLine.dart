import 'package:flutter/material.dart';

class CutLine extends StatelessWidget {
  const CutLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => const SizedBox(
                                height: 1,
                                width: 5,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              )));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
