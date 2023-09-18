import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/Homescreen/gamepage.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Mypassword extends StatefulWidget {
  const Mypassword({super.key});

  @override
  State<Mypassword> createState() => _MypasswordState();
}

class _MypasswordState extends State<Mypassword> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Dialog(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
        child: SingleChildScrollView(
          child: Container(
            height: heights * 0.7,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage(AppAsset
            //             .imagesNewgolden),
            //         fit: BoxFit.fill)),
            decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      child: Image.asset(AppAsset.imagesCross, height: heights/20),
                      onTap: () {
                        Audio.sound();
                        Navigator.pop(context);
                      }),
                ),
                Text("Change Password", style: RighteousMedium.copyWith(fontSize: heights * 0.030, color: Colors.white)),
                SizedBox(height: heights / 20),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    height: heights / 2.9,
                    child: Column(
                      children: [
                        TextField(
                          style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                          decoration:
                          InputDecoration(
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
                                borderRadius: BorderRadius.all(Radius.circular(12.0),
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
                              hintText: "Current Password",
                              hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              labelStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              fillColor: Color(0xff010a40).withOpacity(0.9),
                              filled: true
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: heights / 40),
                        TextField(
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
                                borderRadius: BorderRadius.all(Radius.circular(12.0),
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
                              hintText: "Password",
                              hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              labelStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              fillColor: Color(0xff010a40).withOpacity(0.9),
                              filled: true
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: heights / 40),
                        TextField(
                          style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                          decoration:
                          InputDecoration(
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
                                borderRadius: BorderRadius.all(Radius.circular(12.0),
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
                              hintText: "Confirm password",
                              hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              labelStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                              fillColor: Color(0xff010a40).withOpacity(0.9),
                              filled: true
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: heights/20),
                TextButton(
                    onPressed: () {
                      Audio.sound();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Numberthree()));
                    },
                    child: Image.asset(AppAsset.buttonSubmitRemovebgPreview, height: heights / 15))
              ],
            ),
          ),
        ));
  }
}
