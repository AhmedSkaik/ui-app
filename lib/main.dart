import 'package:flutter/material.dart';
import 'package:ui_momo_fashion/Screans/bottom_Navigation_%20Screan.dart';
import 'package:ui_momo_fashion/Screans/catagories_Screan.dart';
import 'package:ui_momo_fashion/Screans/home_Screan.dart';
import 'package:ui_momo_fashion/Screans/launch_Screan.dart';
import 'package:ui_momo_fashion/Screans/login_Screan.dart';
import 'package:ui_momo_fashion/Screans/out_Boarding_Screan.dart';
import 'package:ui_momo_fashion/Screans/product_Screan.dart';
import 'package:ui_momo_fashion/Screans/recogniser_Screan.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/main_Screan' ,
      routes: {
        '/launch_Screan': (context)=> LaunchScrean(),
        '/outBoarding_Screan': (context)=> OutBoardingScrean(),
        '/login_Screan':(context)=> LoginScrean(),
        '/catagories_Screan':(context)=> CatagoriesScrean(),
        '/recogniser_Screan':(context)=> RecogniserScrean(),
        '/product_Screan': (context) => ProductScrean(),
        '/home_Screan': (context) => HomeScrean(),
        '/main_Screan': (context) => BottomNavigationScrean(),
      },
    );
  }
}
