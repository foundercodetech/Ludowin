import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/Launcher.dart';
import 'package:ludo/Ludo/UI/constant/clipboard.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';

class Myshare extends StatefulWidget {
  const Myshare({super.key});

  @override
  State<Myshare> createState() => _MyshareState();
}

class _MyshareState extends State<Myshare> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Center(child: Text("Refer and Earn",style: RighteousMedium.copyWith(fontSize: heights * 0.030, color: Colors.white),
        )
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // colors: [Color(0xfff000046),Color(0xfff1CB5E0)],
                // colors: [Color(0xff00B4DB),Color(0xff0083B0)],
                // colors: [Color(0xff24C6DC),Color(0xff514A9D)],
                colors: [Color(0xff005AA7),Color(0xffFFFDE4)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            )
        ),
        child: Column(
          children: [
            Container(
              height: heights/6,
              width: widths/0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: heights/10,
                    width: widths/2.1,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesBlueblueshare),fit: BoxFit.fill)),
                    child: Center(child: Text("How it works", style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white))),
                  ),
                  Container(
                    height: heights/10,
                    width: widths/2.1,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesBlueblueshare),fit: BoxFit.fill)),
                    child: Center(child: Text("My Referrals", style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white)))
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: heights/5,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesBlueblueshare),fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Share,Get Paid. Repeat\nrefer and earn upto 100",style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white)),
                      Image.asset(AppAsset.imagesReferfrnd)
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: heights/5,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesBlueblueshare),fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Share your code",style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white)),
                            InkWell(
                                onTap: (){
                                copyToClipboard('jgukku',context);
                                },
                                child: Image.asset(AppAsset.imagesClipboard,height: heights/20))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              share();
                              },
                              child: Image.asset(AppAsset.buttonShare,height: heights/20)
                          ),
                          SizedBox(width: widths/20,),
                          InkWell(
                            onTap: (){
                              Launcher.openwhatsapp(context);

                            },
                              child: Image.asset(AppAsset.imagesWhatsapp,height: heights/20))
                        ],
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: heights/90),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: heights/20,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: heights/25,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: heights/35,
                            backgroundColor: Colors.transparent,
                            child:Image.asset(AppAsset.imagesWalletshare)
                        )
                      ),
                      SizedBox(width: widths/20,),
                      Text("Earn on deposit \nGet Rs100 on friend deposit.", style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white,fontWeight: FontWeight.bold) )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: heights/25,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: heights/35,
                              backgroundColor: Colors.transparent,
                              child:Image.asset(AppAsset.imagesEarnshare)
                          )
                        ),
                        SizedBox(width: widths/20,),
                        Text("Earn on Signup\nGet Rs10 bonus money when your \nfriend signs up.", style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white,fontWeight: FontWeight.bold) )
                      ],
                    ),
                  )
                ],
              ),
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
