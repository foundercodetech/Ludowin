import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';

class Myjoin extends StatefulWidget {
  const Myjoin({super.key});

  @override
  State<Myjoin> createState() => _MyjoinState();
}

class _MyjoinState extends State<Myjoin> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: heights/10),
            child: Container(
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: Colors.white,
                radius: Radius.circular(12),
                // padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: TextField(
                    style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      // counter: Offstage(),
                      // enabledBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      //   borderSide: BorderSide(color: Colors.white, width: 2),
                      // ),
                      // focusedBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      //   borderSide: BorderSide(color: Colors.white, width: 2),
                      // ),
                      // border: const OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.white),
                      //   borderRadius: BorderRadius.all(
                      //     Radius.circular(12.0),
                      //   ),
                      // ),
                      // focusedErrorBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      //   borderSide: BorderSide(color: Color(0xFFF65054)),
                      // ),
                      // errorBorder: const OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      //   borderSide: BorderSide(color: Color(0xFFF65054)),
                      // ),
                      hintText: "Enter code",
                      hintStyle: RighteousMedium.copyWith(fontSize: heights* 0.018, color: Colors.white.withOpacity(0.4)),
                      filled: true,
                      fillColor: Color(0xff010a40).withOpacity(0.9),
                    ),
                    keyboardType: TextInputType.number,
                    // maxLength: 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: heights/20,),
          Container(
            height: heights/20,
            width: widths/2,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonButtonnew))),
              child: Center(child: Text("Join Room",style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.black),))
          )

        ],
      ),
    );
  }
}
