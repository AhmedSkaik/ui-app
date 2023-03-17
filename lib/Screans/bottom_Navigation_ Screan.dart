import 'package:flutter/material.dart';
import 'package:ui_momo_fashion/Modals/bn_Screan.dart';
import 'package:ui_momo_fashion/Screans/catagories_Screan.dart';
import 'package:ui_momo_fashion/Screans/home_Screan.dart';
import 'package:ui_momo_fashion/Screans/product_Screan.dart';
import 'package:ui_momo_fashion/Screans/settings_Screan.dart';

class BottomNavigationScrean extends StatefulWidget {
  const BottomNavigationScrean({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScrean> createState() => _BottomNavigationScreanState();
}

class _BottomNavigationScreanState extends State<BottomNavigationScrean> {

  List<BnScrean> _bnScrean =[
BnScrean(widget: HomeScrean(), title:'Home' ),
BnScrean(widget: CatagoriesScrean(), title:'Catagories' ),
BnScrean(widget: ProductScrean(), title:'Favourite' ),
BnScrean(widget: SettingsScrean(), title:'Settingg' ),
  ];

  int _numitem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bnScrean[_numitem].title),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        onTap: (int currentIndex) {
          print(currentIndex);
          setState(() {
            _numitem = currentIndex;
          });
        },
        currentIndex: _numitem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category),
              label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              activeIcon: Icon(Icons.favorite),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
      body: _bnScrean[_numitem].widget
    );
  }
}
