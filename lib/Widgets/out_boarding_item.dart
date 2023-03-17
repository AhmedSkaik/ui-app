import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OutBoardingItem extends StatelessWidget {
  const OutBoardingItem({
    Key? key, required this.title,
    required this.images
  }) : super(key: key);
  final String title;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(images),
        const SizedBox(height: 30),
        Text(title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(height:21),
        Text('Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg Abq esd qwefg ',
          style: GoogleFonts.openSans(
              fontSize: 17,
              fontWeight: FontWeight.w300,
              color: Colors.black
          ),
        textAlign: TextAlign.center
          ,)
      ],
    );
  }
}