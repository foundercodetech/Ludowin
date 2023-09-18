import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher{
  static void openwhatsapp(context) async{
    var whatsapp ="+916375583101";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
    var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";

    if( await canLaunch(whatsappURl_android)){
      await launch(whatsappURl_android);
    }else{
      ScaffoldMessenger.of(context ).showSnackBar(
          SnackBar(content: new Text("whatsapp not installed")));

    }


  }
  static void  openteligram() async {
    final String groupLink = "https://t.me/ColorWinzo"; // Replace with your Telegram group link

    if (await canLaunch(groupLink)) {
      await launch(groupLink);
    } else {
      throw "Could not launch $groupLink";
    }
  }
}