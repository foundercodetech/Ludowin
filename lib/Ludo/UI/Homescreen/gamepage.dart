import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/Homescreen/Addmoney.dart';
import 'package:ludo/Ludo/UI/Homescreen/Classic.dart';
import 'package:ludo/Ludo/UI/Homescreen/Invite.dart';
import 'package:ludo/Ludo/UI/Homescreen/Leaderboard.dart';
import 'package:ludo/Ludo/UI/Homescreen/Privatetable.dart';
import 'package:ludo/Ludo/UI/Homescreen/Profilepage.dart';
import 'package:ludo/Ludo/UI/Homescreen/ReferAndEarn.dart';
import 'package:ludo/Ludo/UI/Homescreen/Setting.dart';
import 'package:ludo/Ludo/UI/Homescreen/Share.dart';
import 'package:ludo/Ludo/UI/Homescreen/Tournament.dart';
import 'package:ludo/Ludo/UI/Homescreen/Wallet.dart';
import 'package:ludo/Ludo/UI/constant/Launcher.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';
import 'package:ludo/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

//class for button
class Newbutton {
  String photo;
  String photos;
  Newbutton(this.photo, this.photos);
}

//class for 4picutre
class Fourbox {
  String photo;
  String title;
  final void Function()? onTap;
  Fourbox(this.photo, this.title, this.onTap);
// Fourbox(this.photo, this.title);
}

class Numberthree extends StatefulWidget {
  const Numberthree({super.key});

  @override
  State<Numberthree> createState() => _NumberthreeState();
}

class _NumberthreeState extends State<Numberthree> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  List<Newbutton> list = [
    Newbutton(AppAsset.imagesCirclebgtwo, AppAsset.imagesWhatsapp),
    Newbutton(AppAsset.imagesCirclebgtwo, AppAsset.buttonChaticon),
    Newbutton(AppAsset.imagesCirclebgtwo, AppAsset.buttonShare),
  ];

  bool  sound = true;
  bool  music = true;
  bool  vibration = true;

  @override
  void initState() {
    Audio.bgmusic();
    super.initState();

  }


  @override

  Widget build(BuildContext context) {
    List<Fourbox> boxdata = [
      Fourbox(AppAsset.imagesOne, "Classic", () {
        Audio.sound();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => classic()));
      }),
      Fourbox(AppAsset.imagesTwo, "Tournament", () {
        Audio.sound();
        showDialog(context: context, builder: (ctx) => Mytour());
      }),
      Fourbox(AppAsset.imagesThree, "Private Table", () {
        // showDialog(context: context, builder: (ctx) => Myprivate());
        Audio.sound();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Myprivate()));
      }),
      Fourbox(AppAsset.imagesFour, "Refer and earn", () {
        // showDialog(context: context, builder: (ctx) => Myrefer());
        Audio.sound();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Myrefer()));
      }),
    ];
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppAsset.assetsBgapp),
               ),
          ),
        ),
        leading: Row(
          children: [
            InkWell(
              child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: heights/70,vertical: heights/70),
                   child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(AppAsset.imagesAvatar0),
             ),
            ),
              onTap: (){
                Audio.sound();
                showDialog(
                    context: context,
                    builder: (context) =>Myprofile());

              },
            ),
            Text("Apple", style: RighteousBold.copyWith(fontSize: Dimensions.fontSizeDefault))
          ],
        ),
        leadingWidth: widths/3,
        // title: Text("Apple", style: RighteousBold.copyWith(fontSize: Dimensions.fontSizeDefault)),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: heights / 60, vertical: heights / 60),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: heights / 60),
              width: widths / 2.2,
              // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewtop),fit: BoxFit.fill)),
              decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2),borderRadius: BorderRadius.circular(40)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child:  Image.asset(AppAsset.buttonWalletimage),
                    onTap: (){
                      Audio.sound();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Mywallet()));

                      },
                  ),
                  Text("10", style: RighteousMedium.copyWith(fontSize: Dimensions.fontSizeDefault)),
                  InkWell(
                    child: Icon(Icons.add_circle, color: Colors.white),
                    onTap: (){
                      Audio.sound();
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>Mymoney()));

                    },
                  ),

                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         // colors: [Color(0xfff0575e6),Color(0xfff021b79)],
        //         colors: [Color(0xfff000046), Color(0xfff1CB5E0)],
        //         end: Alignment.bottomCenter,
        //         begin: A
        height: heights,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAsset.imagesLudobg), fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: heights / 60, vertical: heights / 60),
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Audio.sound();
                          Launcher.openwhatsapp(context);
                        },
                        child: CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 50,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(AppAsset.imagesWhatsapp),
                          ),
                        ),
                      ),
                      Text("Whatsapp", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                      SizedBox(height: heights / 90,),
                      InkWell(
                        onTap: () {
                          Audio.sound();
                          Launcher.openteligram();
                        },
                        child: CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 50,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              AppAsset.imagesTelegramnew,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text("Telegram", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                      SizedBox(height: heights / 90,),
                      InkWell(
                        child: CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 50,
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              AppAsset.imagesSharenew,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {
                          Audio.sound();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Myshare()));
                        },
                      ),
                      Text("Share", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(AppAsset.imagesLogonew, width: widths / 2),
                  ),
                  Spacer(),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 35,
                            backgroundColor: Colors.transparent,
                            child: IconButton(onPressed:(){
                              Audio.sound();
                              setState(() {
                                sound=!sound;

                              });

                              },
                                icon: Image.asset(sound? AppAsset.imagesSoundnew:AppAsset.imagesNosound,color: sound?Colors.white:Colors.white),
                            ),
                          )),
                      Text("Sound", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                      SizedBox(height: heights / 90,),
                      CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 30,
                            backgroundColor: Colors.transparent,
                            child: IconButton(onPressed:(){
                              Audio.sound();
                              setState(() {
                                music=!music;
                              });

                            },
                              icon: Image.asset(music? AppAsset.imagesMusicnew:AppAsset.imagesNomusic,color: music?Colors.white:Colors.white),
                              // icon:Icon(swetapagal? Icons.add:Icons.remove,color: swetapagal? Colors.green:Colors.red,)
                            ),
                          )),
                      Text("Music", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                      SizedBox(height: heights / 90),
                      CircleAvatar(
                          radius: heights / 30,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebgtwo),
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: CircleAvatar(
                            radius: heights / 35,
                            backgroundColor: Colors.transparent,
                            child: IconButton(onPressed:(){
                              Audio.sound();
                              setState(() {
                                vibration=!vibration;
                              });
                              },
                              icon: Image.asset(vibration? AppAsset.imagesVibrartionnew:AppAsset.imagesNovibrartion,color: vibration?Colors.white:Colors.white),
                              // icon:Icon(swetapagal? Icons.add:Icons.remove,color: swetapagal? Colors.green:Colors.red,)
                            ),
                          )),
                      Text("Vibration", style: RighteousMedium.copyWith(fontSize: heights * 0.013, color: Colors.white)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: heights * 0.05,),
              GridView.builder(
                // padding: EdgeInsets.symmetric(horizontal: 30,),
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0
                  ),
                  itemCount: boxdata.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: boxdata[index].onTap,
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(boxdata[index].photo),
                                  fit: BoxFit.fill)),
                          ),
                          SizedBox(height: heights/70,),
                          Text(boxdata[index].title, style: RighteousBold.copyWith(fontSize: heights * 0.015, color: Colors.white))
                        ],
                      ),
                      // Container(
                      //   height: heights*0.3,
                      //     width: widths*0.2,
                      //     decoration: BoxDecoration(image: DecorationImage(image: AssetImage(boxdata[index].photo),fit: BoxFit.fill)),
                      //     // child: Text(boxdata[index].title, style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold)),)
                      // ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: heights / 25,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebottom),
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: heights / 25,
                            backgroundImage: AssetImage(AppAsset.imagesBluenew),
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: heights / 35,
                              backgroundColor: Colors.transparent,
                              child: Image.asset(AppAsset.imagesLeadimage),
                            ),
                          ),
                        ),
                        Text("Leaderboard", style: RighteousMedium.copyWith(fontSize: heights * 0.0132, color: Colors.white)),
                      ],
                    ),
                    onTap: () {
                      Audio.sound();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                  ),
                  InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: heights / 25,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage(AppAsset.imagesCirclebottom),
                          child: CircleAvatar(
                              radius: heights / 25,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage(AppAsset.imagesBluenew),
                              child: CircleAvatar(
                                radius: heights / 35,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(AppAsset.imagesNewinvite),
                              )),
                        ),
                        Text("Invite",
                            style: RighteousMedium.copyWith(fontSize: heights * 0.0132, color: Colors.white)),
                      ],
                    ),
                    onTap: () {
                      Audio.sound();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Myinvite()));
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: heights / 25,
                          backgroundImage: AssetImage(AppAsset.imagesCirclebottom),
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: heights / 25,
                            backgroundImage: AssetImage(AppAsset.imagesBluenew),
                            backgroundColor: Colors.transparent,
                            child: CircleAvatar(
                              radius: heights / 35,
                              backgroundColor: Colors.transparent,
                              child: Image.asset(AppAsset.buttonSettingimage),
                            ),
                          ),
                        ),
                        Text("Setting",
                            style: RighteousMedium.copyWith(
                                fontSize: heights * 0.0132, color: Colors.white))
                      ],
                    ),
                    onTap: (){
                      Audio.sound();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mysettings()));

                    },
                  )



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
