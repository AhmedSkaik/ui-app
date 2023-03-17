import 'package:flutter/material.dart';

class ProductScrean extends StatelessWidget {
  const ProductScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          childAspectRatio: 132/214
        ),
        children: [
          Container(color: Colors.pink,),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.orange,),
        ],
      ),
    );
  }
}
