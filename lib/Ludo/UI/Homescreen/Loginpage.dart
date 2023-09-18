import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';
import 'Gamepage.dart';
import 'Register.dart';
import 'package:http/http.dart' as http;

class numberone extends StatefulWidget {
  const numberone({super.key});

  @override
  State<numberone> createState() => _numberoneState();
}

class _numberoneState extends State<numberone> {
  final TextEditingController phoneCon=TextEditingController();
  final TextEditingController passCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: heights,
            width: widths,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesPlainnew), fit: BoxFit.fill)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image.asset(AppAsset.imagesLogonew),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: heights/30,vertical: heights/40),
                      child:
                      TextField(
                        controller: phoneCon,
                        style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          counter: Offstage(),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(18.0),
                            ),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Color(0xFFF65054)),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Color(0xFFF65054)),
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/50),
                              Icon(Icons.phone, color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          fillColor:  Color(0xff010a40).withOpacity(0.9),
                          filled: true,
                          hintText: "Mobile Number",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white.withOpacity(0.4))
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: heights/30),
                      child: TextField(
                        controller: passCon,
                        style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Color(0xFFF65054)),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18.0)),
                            borderSide: BorderSide(color: Color(0xFFF65054)),
                          ),
                          fillColor: Color(0xff010a40).withOpacity(0.9),
                          filled: true,
                          hintText: "Enter password",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white.withOpacity(0.4)),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/50,),
                              Icon(Icons.lock, color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text("Create New Account", style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white)),
                        onTap: () {
                          Audio.sound();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Numbertwo()));
                        },
                      ),
                      Spacer(),
                      InkWell(
                        child: Text("Forget password?", style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white)),
                        onTap: () {
                          Audio.sound();
                          showDialog(
                              context: context,
                              builder: (ctx) => Dialog(
                                backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: heights / 2.6,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

                                        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesNewbg),fit: BoxFit.fill)),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: heights / 30,
                                            ),
                                            Center(child: Text("Forget password", style: RighteousMedium.copyWith(fontSize: heights * 0.030, color: Colors.white))),
                                            SizedBox(
                                              height: heights / 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: heights/40),
                                              child: TextField(
                                                style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                                                cursorColor: Colors.white,
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
                                                    prefixIcon: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        SizedBox(width: heights / 60,),
                                                        Icon(Icons.phone, color: Colors.white),
                                                        Image.asset(AppAsset.imagesTextfiled)
                                                      ],
                                                    ),
                                                    hintText: "+91 Mobile No.",
                                                    hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white.withOpacity(0.4)),
                                                    filled: true,
                                                    fillColor: Color(0xff010a40).withOpacity(0.9),
                                                ),
                                                obscureText: true,
                                              ),
                                            ),
                                            SizedBox(height: heights / 30),
                                            Container(
                                              height: heights/15,
                                              width: widths/2.8,
                                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonButtonnew),fit: BoxFit.fill),
                                                  border: Border.all(color: Colors.white,width: 3),borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Center(child: Text("Forgot password",style:RighteousMedium.copyWith(fontSize: heights * 0.015, color: Colors.black))),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: InkWell(
                                          child: Image.asset(AppAsset.imagesCross, height: heights / 22),
                                          onTap: () {
                                            Audio.sound();
                                            Navigator.pop(context);
                                          },
                                        ),
                                      )
                                    ],
                                  )
                              ));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: heights / 20),
                InkWell(
                  onTap: (){
                    Audio.sound();
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => Numberthree()));
                  },
                  child: Container(
                    height: heights/15,
                    width: widths/2.8,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonButtonnew),fit: BoxFit.fill),
                    border: Border.all(color: Colors.white,width: 3),borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("Sign In",style:RighteousMedium.copyWith(fontSize: heights * 0.025, color: Colors.black))),
                  ),
                )
              ],
            ),
          ),
        ));
  }

//  login(String phoneCon, String passCon) async {
//   var uri = "https://kinggame.in/admin/index.php/Mobile_app/user_login";
//   print(uri);
//   final res = await http.post(
//     Uri.parse(uri),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body:
//         jsonEncode(<String, String>{"username": phoneCon, "password": passCon}),
//   );
//   var decodedata = jsonDecode(res.body);
//   print(decodedata);
//   if (decodedata['error'] == "200") {
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => Numberthree()));
//   } else {
//     print(decodedata['msg']);
//   }
// }

}
