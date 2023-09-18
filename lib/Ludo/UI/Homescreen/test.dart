import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/constant/slidingSwitch.dart';

class sliding extends StatefulWidget {
  const sliding({super.key});

  @override
  State<sliding> createState() => _slidingState();
}

class _slidingState extends State<sliding> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SlidingSwitch(
        value: false,
        width: 250,
        onChanged: (bool value) {
          print(value);
        },
        height: 55,
        animationDuration: const Duration(milliseconds: 400),
        onTap: () {},
        onDoubleTap: () {},
        onSwipe: () {},
        textOff: "Female",
        textOn: "Male",
        colorOn: const Color(0xffdc6c73),
        colorOff: const Color(0xff6682c0),
        background: const Color(0xffe4e5eb),
        buttonColor: const Color(0xfff7f5f7),
        inactiveColor: const Color(0xff636f7b),
      ),
    );
  }
}
