import 'package:flutter/material.dart';

class OutBoardingIndector extends StatelessWidget {
  const OutBoardingIndector({
    Key? key,
    required this.selected,
    this.MarginEnd=0
  }) : super(key: key);
  final bool selected;
  final double MarginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: MarginEnd),
      width: 20,
      height: 6,
      decoration: BoxDecoration(
        color:selected? Colors.blue: Colors.grey,
        borderRadius: BorderRadius.circular(2.5),
      ),
    );
  }
}