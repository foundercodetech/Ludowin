// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:ludo/Ludo/UI/constant/images.dart';
//
// import 'package:url_launcher/url_launcher.dart';
//
// class CustomAppBarTwo extends StatefulWidget with PreferredSizeWidget {
//   @override
//   final Size preferredSize;
//
//   CustomAppBarTwo({Key? key})
//       : preferredSize = const Size.fromHeight(54.0),
//         super(key: key);
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _CustomAppBarTwoState createState() => _CustomAppBarTwoState();
// }
//
// class _CustomAppBarTwoState extends State<CustomAppBarTwo> {
//   @override
//   void initState() {
//     viewprofile();
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     //     AppBar(
//     //   flexibleSpace: Container(
//     //     decoration: BoxDecoration(
//     //       image: DecorationImage(
//     //           fit: BoxFit.fill,
//     //           image: AssetImage(AppAsset.assetsBgapp),
//     //           opacity: 0.8),
//     //     ),
//     //   ),
//     //   automaticallyImplyLeading: false,
//     //   leading: Container(
//     //     decoration: BoxDecoration(
//     //         image: DecorationImage(
//     //             fit: BoxFit.fill, image: AssetImage(sideappbar))),
//     //     child: Row(
//     //       mainAxisAlignment: MainAxisAlignment.start,
//     //       crossAxisAlignment: CrossAxisAlignment.center,
//     //       children: [
//     //         InkWell(
//     //             child: Padding(
//     //               padding: EdgeInsets.only(top: 2, bottom: 2, left: 5),
//     //               child: Container(
//     //                 child: Center(
//     //                     child: map['photo'] == null
//     //                         ? CircleAvatar(
//     //                       backgroundColor: Colors.transparent,
//     //                       backgroundImage: AssetImage(avtar),
//     //                       radius: 20,
//     //                       child: CircleAvatar(
//     //                           backgroundColor: Colors.transparent,
//     //                           radius: 35,
//     //                           backgroundImage: AssetImage(profilebg)),
//     //                     )
//     //                         : CircleAvatar(
//     //                       backgroundColor: Colors.transparent,
//     //                       backgroundImage: NetworkImage(
//     //                           Apiconst.imgurl + map['photo']),
//     //                       radius: 20,
//     //                       child: CircleAvatar(
//     //                           backgroundColor: Colors.transparent,
//     //                           radius: 35,
//     //                           backgroundImage: AssetImage(profilebg)),
//     //                     )),
//     //               ),
//     //             )),
//     //
//     //
//     //       ],
//     //     ),
//     //   ),
//     //   leadingWidth: 180,
//     //   actions: [
//     //
//     //   ],
//     // );
//   }
//
//
//
// }