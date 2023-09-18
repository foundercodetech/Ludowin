import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/Homescreen/Loginpage.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';


class FSplashscreen extends StatefulWidget {
  const FSplashscreen({super.key});

  @override
  State<FSplashscreen> createState() => _FSplashscreenState();
}

class _FSplashscreenState extends State<FSplashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),
            ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => numberone()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[900],
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesLudobgwithlogo),fit: BoxFit.cover)),
            ),
            // Align(
            //   alignment: Alignment.center,
            //   child:Center(
            //       child: Image.asset(AppAsset.imagesAppIcon)
            //   ),
            // )
          ],
        )

    );
  }
}
