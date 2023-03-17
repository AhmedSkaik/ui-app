import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(10),
      children: [
        Text('Catagories'),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 100,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                  );
                })),
        SizedBox(
          height: 10,
        ),
        Text('Products'),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: GridView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.orange,
                );
              }),
        ),
        SizedBox(height: 10,),
        Text('OFFERS'),
        SizedBox(height: 10,),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text('Offer'),
                subtitle: Text('offer- details'),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            })
      ],
    )
    ;

  }
}
