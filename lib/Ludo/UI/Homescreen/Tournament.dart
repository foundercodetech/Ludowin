import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Mytour extends StatefulWidget {
  const Mytour({super.key});

  @override
  State<Mytour> createState() => _MytourState();
}

class _MytourState extends State<Mytour> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
            // height: heights/0.8,
            // width: widths/1.9,
            // decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAsset.imagesNewgolden)),fit: BoxFit.fill)),
        height: heights,
          width: widths,
          decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

          child:Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Image.asset(
                          AppAsset.imagesCross, height: heights/20),
                      onTap: () {
                        Audio.sound();
                        Navigator.pop(context);
                      },
                    )
                ),
                Text("Comming Soon", style: RighteousMedium.copyWith(fontSize: heights * 0.035, color: Colors.white)),

              ],
            )
        ),
    );
  }
}

