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
      initialRoute:'/launch_Screan' ,
      routes: {
        '/launch_Screan': (context)=>   const LaunchScrean() ,

        '/outBoarding_Screan': (context)=> const OutBoardingScrean(),
        '/login_Screan':(context)=> const LoginScrean(),
        '/catagories_Screan':(context)=> const CatagoriesScrean(),
        '/recogniser_Screan':(context)=> const RecogniserScrean(),
        '/product_Screan': (context) => const ProductScrean(),
        '/home_Screan': (context) => const HomeScrean(),
        '/main_Screan': (context) => const BottomNavigationScrean(),
      },
    );
  }
}
