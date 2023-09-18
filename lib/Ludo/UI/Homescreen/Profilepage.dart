import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Newphoto{
  String photo;
  Newphoto(this.photo);
}


class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  List<Newphoto> list = [
    Newphoto(AppAsset.imagesAvatar0),
    Newphoto(AppAsset.imagesAvatar1),
    Newphoto(AppAsset.imagesAvatar2),
    Newphoto(AppAsset.imagesAvatar3),
    Newphoto(AppAsset.imagesAvatar4),
    Newphoto(AppAsset.imagesAvatar5),
    Newphoto(AppAsset.imagesAvatar0),
    Newphoto(AppAsset.imagesAvatar4),
    Newphoto(AppAsset.imagesAvatar3),
    Newphoto(AppAsset.imagesAvatar0),
    Newphoto(AppAsset.imagesAvatar5),
    Newphoto(AppAsset.imagesAvatar0),
    Newphoto(AppAsset.imagesAvatar4),
    Newphoto(AppAsset.imagesAvatar0),
    Newphoto(AppAsset.imagesAvatar2),

  ];
  var mydata;

  File? file;
  final picker = ImagePicker();
  void _choose() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
        final bytes = File(pickedFile.path).readAsBytesSync();
        String img64 = base64Encode(bytes);
        mydata = img64;
        print('Abhinav');
        print(img64);
        print('Thi');
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            // height: heights*0.7,
            // width: widths*0.8,
            // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewbg),fit: BoxFit.fill),
            //     border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(5)),
            height: heights,
            width: widths,
            decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
            child: Column(
              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      child: Image.asset(AppAsset.imagesCross, height: heights/20),
                                      onTap: (){
                                        Audio.sound();
                                        Navigator.pop(context);
                                      },
                                    )
                                ),
                                SizedBox(height: heights/35,),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:90),
                                      child: InkWell(
                                        onTap:_choose,
                                        child: file != null
                                            ? CircleAvatar(backgroundImage: FileImage(file!), radius: heights/28,)
                                            : CircleAvatar(radius: heights/28, backgroundImage: AssetImage(AppAsset.imagesAvatar3),)

                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Apple \nID:57167662", style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                                    ),
                                    SizedBox(width: widths/15,),
                                    InkWell(
                                        child:Icon(Icons.text_snippet, color: Colors.yellow) ,
                                        onTap: (){
                                          Audio.sound();
                                          showDialog(context: context,
                                              builder: (ctx) => Dialog(
                                                backgroundColor: Colors.black,
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
                                                child:Container(
                                                    height: heights/2.4,
                                                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewbg),fit: BoxFit.fill)),
                                                  decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

                                                  child: Column(
                                                      children: [
                                                        Align(
                                                            alignment: Alignment.topRight,
                                                            child: InkWell(
                                                              child: Image.asset(AppAsset.imagesCross, height: heights/20),
                                                              onTap: (){
                                                                Audio.sound();
                                                                Navigator.pop(context);
                                                              },
                                                            )
                                                        ),
                                                        Text("Change Username",style: RighteousMedium.copyWith(fontSize: heights * 0.030, color: Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.all(30),
                                                          child: Container(
                                                            height: heights/10,
                                                            width: widths/1.7,
                                                            child: TextField(
                                                              style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                                                              decoration: InputDecoration(
                                                                  enabledBorder: const OutlineInputBorder(
                                                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                    borderSide: BorderSide(color: Colors.white, width: 2),
                                                                  ),
                                                                  focusedBorder: const OutlineInputBorder(
                                                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                    borderSide: BorderSide(color: Colors.white, width: 2),
                                                                  ),
                                                                  border: const OutlineInputBorder(
                                                                    borderSide: BorderSide(color: Colors.white),
                                                                    borderRadius: BorderRadius.all(
                                                                      Radius.circular(12.0),
                                                                    ),
                                                                  ),
                                                                  focusedErrorBorder: const OutlineInputBorder(
                                                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                    borderSide: BorderSide(color: Color(0xFFF65054)),
                                                                  ),
                                                                  errorBorder: const OutlineInputBorder(
                                                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                                    borderSide: BorderSide(color: Color(0xFFF65054)),
                                                                  ),
                                                                  hintText: "Apple",
                                                                  hintStyle:  RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                                                                  fillColor:Color(0xff010a40).withOpacity(0.9),
                                                                  filled: true
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        TextButton(
                                                            onPressed: (){
                                                              Audio.sound();
                                                              Navigator.pop(context);
                                                            },
                                                            child: Image.asset(AppAsset.buttonSubmit,height: heights/15)
                                                        )
                                                      ],
                                                    ),
                                                  )
                                              )
                                          );
                                        }
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only( top: 5,left: 90),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child:Image.asset(AppAsset.buttonChange,height: heights/40),
                                        onTap: (){
                                          Audio.sound();
                                          showDialog(context: context,
                                              builder: (ctx) => Dialog(
                                                backgroundColor: Colors.black,
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
                                                  child:Container(
                                                    height: heights/2,
                                                    // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewbg),fit: BoxFit.fill)),
                                                    decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment.topRight,
                                                          child: InkWell(
                                                            child: Image.asset(AppAsset.imagesCross, height: heights/20),
                                                            onTap: (){
                                                              Audio.sound();
                                                              Navigator.pop(context);
                                                            },
                                                          ),
                                                        ),
                                                        Text("Select Image",  style: RighteousMedium.copyWith(fontSize: heights * 0.030, color: Colors.white),),
                                                        // Text("Select Image", style: GoogleFonts.robotoSlab(textStyle: TextStyle(color: Colors.white,fontSize: heights/25))),
                                                        Padding(
                                                          padding:  EdgeInsets.symmetric(vertical: heights/20),
                                                          child: Container(
                                                            height: heights/5,
                                                            width: widths/1.2,
                                                            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                  crossAxisCount: 3,
                                                                  crossAxisSpacing: 11,
                                                                  mainAxisSpacing: 10,
                                                                  childAspectRatio: 3/2,
                                                                ),
                                                                itemCount: list.length,
                                                                itemBuilder: (BuildContext ctx, index) {
                                                                  return CircleAvatar(
                                                                    child: Image.asset(list[index].photo),
                                                                  );
                                                                }),
                                                          ),
                                                        ),
                                                        TextButton(
                                                            onPressed: (){
                                                              Audio.sound();
                                                              Navigator.pop(context);
                                                              },
                                                            child: Image.asset(AppAsset.buttonSavesave,height: heights/15)
                                                        )

                                                      ],
                                                    ),
                                                  )
                                              )
                                          );
                                          },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Container(
                                          width: widths/4,
                                          decoration: BoxDecoration(color: Colors.white,
                                              border: Border.all(color: Colors.white, width: 2),
                                              borderRadius: BorderRadius.circular(9)),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.monetization_on_rounded,color: Colors.red,size: 20,),
                                              Text("10",  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.black),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: heights/15,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color: Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          children: [
                                            Text('Username',  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                            Spacer(),
                                            Text('Apple', style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white),),

                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: heights/90,),
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color:  Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          children: [
                                            // SizedBox(width: widths/40,),
                                            Text('Mobile No.',  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                            Spacer(),
                                            Text('1234567897',  style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: heights/90,),
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color:  Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            // SizedBox(width: widths/40,),
                                            Text('Email Id',  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                            Spacer(),
                                            Text('apple@gmail.com',  style: RighteousMedium.copyWith(fontSize: heights * 0.020, color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: heights/90,),
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color:  Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            // SizedBox(width: widths/40,),
                                            Text('Bank Account',  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: heights/90,),
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color:  Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Paytm Account',  style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: heights/90,),
                                    Container(
                                      height: heights/25,
                                      width: widths/1.6,
                                      decoration: BoxDecoration(color:  Color(0xff010a40),
                                          border: Border.all(color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: heights/70),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            // SizedBox(width: widths/40,),
                                            Text('UPI', style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),

                        ],
                      ),
    );






  }
}
