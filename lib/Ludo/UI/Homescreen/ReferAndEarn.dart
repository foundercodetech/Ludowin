import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/clipboard.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Myrefer extends StatefulWidget {
  const Myrefer({super.key});

  @override
  State<Myrefer> createState() => _MyreferState();
}

class _MyreferState extends State<Myrefer> {
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
                decoration: BoxDecoration(image: DecorationImage(image: (AssetImage(AppAsset.imagesReferearnnew )),fit: BoxFit.fill),
                    border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: heights/8.2),
                    Center(child: Text("REFER & EARN", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white))),
                    SizedBox(height: heights/9),
                    Text("  INVITE YOUR\nFRIENDS & EARN", style: RighteousBold.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                    SizedBox(height: heights/17),
                    Text("Win ₹5/- for each sign-up", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.brown)),
                    SizedBox(height: heights/49),
                    Column(
                      children: [
                        Text("Win 2% of commission fees", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.brown)),
                        Text("    whenever your\n referral plays a game", style: RighteousMedium.copyWith(fontSize: heights * 0.015, color: Colors.brown)),
                      ],
                    ),
                    SizedBox(height: heights/8),
                    Text("REFERRAL CODE",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.yellow) ),
                    SizedBox(height: heights/200),
                    Container(
                      height: heights/26,
                      width: widths/2.5,
                      // color: Colors.teal,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.yellow,
                            height: heights/30,
                            width: widths/3,
                            child: Center(child: Text("hdjfbh",style: RighteousMedium.copyWith(fontSize: heights* 0.018, color: Colors.white),)),
                          ),
                          Container(
                            // color: Colors.orangeAccent,
                            height: heights/30,
                            width: widths/15,
                            child:  InkWell(
                                onTap: (){
                                  copyToClipboard('hdjfbh',context);
                                },
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: heights/14),
                    Text("INVITE", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                    SizedBox(height: heights/20,),
                    Text("REFERRAL HISTORY", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),



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
  String referalCode = 'initialData';
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Referral Code :',
        text: 'Join Now & Get Exiting Prizes. here is my Referral Code : ' ,
        linkUrl: "",
        chooserTitle: 'Referrel Code : '
    );
  }

}

