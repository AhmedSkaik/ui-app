import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScrean extends StatefulWidget {
  const LaunchScrean({Key? key}) : super(key: key);

  @override
  State<LaunchScrean> createState() => _LaunchScreanState();

}

class _LaunchScreanState extends State<LaunchScrean> {

  @override
  void initState(){
    super.initState();
      Future.delayed(Duration(seconds: 3),(){
          Navigator.pushReplacementNamed(context, '/outBoarding_Screan');
      });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade200,
              Colors.pink.shade200,

            ]
          )
        ),
        child: Center(
          child:Text('UI APP',
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),

          )
        ),
      ) ,
    );
  }
}
