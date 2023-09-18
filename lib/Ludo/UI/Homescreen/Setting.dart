import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/Homescreen/Loginpage.dart';
import 'package:ludo/Ludo/UI/Homescreen/logout.dart';
import 'package:ludo/Ludo/UI/Homescreen/password.dart';
import 'package:ludo/Ludo/UI/constant/custom_switch.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

import 'Gamepage.dart';

class Mysettings extends StatefulWidget {
  const Mysettings({super.key});

  @override
  State<Mysettings> createState() => _MysettingsState();
}

class _MysettingsState extends State<Mysettings> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  bool gamechat = false;
  bool Vibration = false;
  bool Sound = false;

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

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: heights,
        width: widths,
        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewgolden),fit: BoxFit.fill)),
        decoration:BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    child: Image.asset(AppAsset.imagesCross,
                        height: heights / 20),
                    onTap: () {
                      Audio.sound();
                      Navigator.pop(context);
                    }),
              ),
              // SizedBox(height: heights/60,),
              Text("Settings", style: RighteousMedium.copyWith(fontSize: heights * 0.049, color: Colors.white)),
              SizedBox(height: heights * 0.06),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sound',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.020,
                              color: Colors.white)),
                      CustomSwitch(
                        activeColor: Colors.green,
                        value: Sound,
                        onChanged: (value) {
                          print("VALUE : $value");
                          Audio.sound();
                          setState(() {
                            Sound = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Vibration',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.020,
                              color: Colors.white)),
                      CustomSwitch(
                        activeColor: Colors.green,
                        value: Vibration,
                        onChanged: (value) {
                          Audio.sound();
                          print("VALUE : $value");
                          setState(() {
                            Vibration = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Game Chat',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.020,
                              color: Colors.white)),
                      CustomSwitch(
                        activeColor: Colors.green,
                        value: gamechat,
                        onChanged: (value) {
                          Audio.sound();
                          print("VALUE : $value");
                          setState(() {
                            gamechat = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Share',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.020,
                              color: Colors.white)),
                      Container(
                        height: heights/20,
                        width: widths/10,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          icon: Icon(Icons.share,size: 17,),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Contact',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.020,
                              color: Colors.white)),
                      Container(
                        height: heights/20,
                        width: widths/10,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          icon: Icon(Icons.contact_page_sharp,size: 17,),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Gamer Rules', style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white)),
                      Container(
                        height: heights/20,
                        width: widths/10,
                        decoration: BoxDecoration(color: Colors.green,border: Border.all(color: Colors.yellow, width: 2),borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          icon: Icon(Icons.rule_folder,size: 17,),
                          color: Colors.white,
                          onPressed: () {
                            Audio.sound();
                            showDialog(
                                context: context,
                                builder: (ctx) => Dialog(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
                                    child: Container(
                                      height: heights * 0.7,
                                      width: widths * 0.2,
                                      // decoration: BoxDecoration(
                                      //     image: DecorationImage(
                                      //         image: AssetImage(AppAsset
                                      //             .imagesNewgolden),
                                      //         fit: BoxFit.fill)),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

                                      child: Column(
                                        children: [
                                          Align(
                                            alignment:
                                                Alignment.topRight,
                                            child: Container(
                                                child: InkWell(
                                                    child: Image.asset(
                                                        AppAsset
                                                            .imagesCross,
                                                        height:
                                                            heights /
                                                                20),
                                                    onTap: () {
                                                      Audio.sound();
                                                      Navigator.pop(
                                                          context);
                                                    })),
                                          ),
                                          Center(
                                              child: Text("Rules",
                                                  style: RighteousMedium
                                                      .copyWith(
                                                          fontSize:
                                                              heights *
                                                                  0.030,
                                                          color: Colors
                                                              .white))),
                                          // Text("Rules", style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white,fontSize: heights/20))),
                                        ],
                                      ),
                                    )));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How to use',
                          style: RighteousMedium.copyWith(
                              fontSize: heights * 0.019,
                              color: Colors.white)),
                      Container(
                        height: heights/20,
                        width: widths/10,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                                color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          icon: Icon(Icons.content_paste_search_sharp,size: 17,),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Change Password', style: RighteousMedium.copyWith(fontSize: heights * 0.019,color: Colors.white)),
                      InkWell(
                        onTap: (){
                          Audio.sound();
                          showDialog(
                              context: context,
                              builder: (context) =>Mypassword());
                        },
                        child: Container(
                          height: heights/20,
                          width: widths/10,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.remove_red_eye, size: 17, color: Colors.white),
                        )

                      )],
                  ),
                ),
              ),
              SizedBox(height: heights * 0.01,),
              Container(
                width: widths / 1.6,
                height: heights / 15,
                decoration: BoxDecoration(
                    color: Color(0xff010a40).withOpacity(0.9),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Logout', style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white)),
                      InkWell(
                        onTap: () {
                          Audio.sound();
                          showDialog(
                              context: context,
                              builder: (context)=> Mylogout());
                        },
                        child: Container(
                          height: heights/20,
                          width: widths/10,
                          decoration: BoxDecoration(color: Colors.green,
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.logout_outlined, size: 17, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );


  }
}
