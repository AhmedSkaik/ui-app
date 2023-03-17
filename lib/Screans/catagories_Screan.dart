import 'package:flutter/material.dart';

class CatagoriesScrean extends StatefulWidget {
  const CatagoriesScrean({Key? key}) : super(key: key);

  @override
  State<CatagoriesScrean> createState() => _CatagoriesScreanState();
}

class _CatagoriesScreanState extends State<CatagoriesScrean> {
  @override
  Widget build(BuildContext context) {
    return
        ListView.separated  (
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('title'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
          separatorBuilder: (context,index){
          return Divider();
          },
          itemCount: 5,

    );

  }
}
