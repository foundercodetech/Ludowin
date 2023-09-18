import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/Homescreen/Loginpage.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Mylogout extends StatefulWidget {
  const Mylogout({super.key});

  @override
  State<Mylogout> createState() => _MylogoutState();
}

class _MylogoutState extends State<Mylogout> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Dialog(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
        child: Container(
          height: heights * 0.3,
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage(
          //             AppAsset.imagesNewbg), fit: BoxFit.fill)),
          decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    child: Image.asset(AppAsset.imagesCross, height: heights / 25),
                    onTap: () {
                      Audio.sound();
                      Navigator.pop(context);
                    }),
              ),
              Text("Logout",
                  style: RighteousMedium.copyWith(fontSize: heights * 0.032, color: Colors.white)),
              SizedBox(
                  height: heights / 30),
              Text("Are you sure want to Logout?", style: RighteousMedium.copyWith(
                  fontSize: heights * 0.023, color: Colors.white)),
              SizedBox(
                  height: heights * 0.04),
              Container(
                width: widths * 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: heights * 0.06,
                        width: widths * 0.3,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonYes),
                            fit: BoxFit.fill)),
                      ),
                      onTap: (){
                        Audio.sound();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>numberone())
                        );
                      },
                    ),
                    InkWell(
                      onTap: (){
                        Audio.sound();
                      },
                      child: Container(
                        height: heights * 0.06,
                        width: widths * 0.3,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonNo),
                            fit: BoxFit.fill)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
