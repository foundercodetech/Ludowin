import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/Homescreen/Addamount.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Mywallet extends StatefulWidget {
  const Mywallet({super.key});

  @override
  State<Mywallet> createState() => _MywalletState();
}

class _MywalletState extends State<Mywallet> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: heights,
              width: widths,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset. assetsImagesWalletnew),fit: BoxFit.fill),
                  border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
              child: Column(
                children: [
                  SizedBox(height: heights/8.5,),
                  Text("WALLET", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                  SizedBox(height: heights/13,),
                  Container(
                    height: heights/10,
                    width: widths/1.5,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("MAIN BALANCE", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                        ),
                        SizedBox(height: heights/35,),
                        Padding(
                          padding: EdgeInsets.only(left: widths/30,right: widths/20,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // SizedBox(width: widths/20,),
                              Text("₹230", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                              SizedBox(width: widths/5,),
                              InkWell(
                                  onTap: (){
                                    Audio.sound();
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => recharge()));
                                  },
                                  child: Text("ADD AMOUNT", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white))),

                            ],
                          ),
                        ),
                        // Row(
                        //   // crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     SizedBox(width: widths/25,),
                        //     Text("₹230", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                        //     SizedBox(width: widths/4.9,),
                        //     InkWell(
                        //         onTap: (){
                        //           Audio.sound();
                        //           Navigator.push(
                        //               context, MaterialPageRoute(builder: (context) => recharge()));
                        //         },
                        //         child: Text("ADD AMOUNT", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)))
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: heights/18,),
                  Container(
                    height: heights/10,
                    width: widths/1.5,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("WINNING BALANCE", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                        ),
                        SizedBox(height: heights/37,),
                        Padding(
                          padding: EdgeInsets.only(left: widths/20,right: widths/10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("₹230",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                              SizedBox(width: widths/4.6,),
                              Text("WITHDRAW",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: heights/17,),
                  Container(
                    height: heights/10.3,
                    width: widths/1.5,
                    // color: Colors.teal,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("BONUS BALANCE", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                        ),
                        SizedBox(height: heights/69,),
                        Row(
                         // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(width: widths/19,),
                            Text("₹230",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                            SizedBox(width: widths/4.2),
                            Text("  While joining a game,\n5% will be used from your\n  BONUS BALANCE",style: RighteousMedium.copyWith(fontSize: heights * 0.010, color: Colors.brown))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: heights/8.8,),
                  Text("YOUR COUPONS",style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white)),
                  SizedBox(height: heights/10.3,),
                  Text("TRANSACTION HISTORY", style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white),),

                ],
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: InkWell(
                  onTap: (){
                    Audio.sound();
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: heights/20,
                    width: widths/11,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesCross),fit: BoxFit.fill)),

                  ),
                )
            )
          ],
        ),
      ),
    );

  }
}
