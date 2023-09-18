import 'dart:async';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/Homescreen/createPrivatetable.dart';
import 'package:ludo/Ludo/UI/Homescreen/joinPrivatetable.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/slidingSwitch.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';



// class Category {
//   final String name;
//   final List<Subcategory> subcategories;
//
//   Category({required this.name, required this.subcategories});
// }
//

// class Subcategory{
//   final String photoone;
//   final String photo;
//   final String title;
//   final String titleone;
//   Subcategory({required this.photoone,required this.photo,required this.title,required this.titleone});
// }


class Myprivate extends StatefulWidget {
  Myprivate({super.key});


  // final List<Category> categories = [
  //   Category(
  //     name: 'Create',
  //     subcategories: [
  //       Subcategory(photoone: AppAsset.buttonAddmoney,photo: AppAsset.buttonAddmoney,title: "₹150",titleone: "₹50" ),
  //       Subcategory(photoone: AppAsset.buttonAddmoney,photo: AppAsset.buttonAddmoney,title: "₹140",titleone: "₹40"),
  //       Subcategory(photoone: AppAsset.buttonAddmoney,photo: AppAsset.buttonAddmoney,title: "₹100",titleone: "₹30"),
  //       Subcategory(photoone: AppAsset.buttonAddmoney,photo: AppAsset.buttonAddmoney,title: "₹80",titleone: "₹20" ),
  //       Subcategory(photoone: AppAsset.buttonAddmoney,photo: AppAsset.buttonAddmoney,title: "₹50",titleone: "₹10"),
  //
  //     ],
  //   ),
  //   Category(
  //     name: 'Join',
  //     subcategories:[
  //
  //       ],
  //   ),
  // ];

  @override
  State<Myprivate> createState() => _MyprivateState();
}

class _MyprivateState extends State<Myprivate> {
   // Category? _selectedCategory;

  bool _isSecondPage = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSecondPage = value;
    });
  }



  @override
  Widget build(BuildContext context) {

    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Stack(
              clipBehavior: Clip.none,
            children: [
              Center(
                child: Container(
                  height: heights/1.05,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    children: [
                      SizedBox(height: heights/20,),
                      Center(child: Text("Private Table", style: RighteousMedium.copyWith(fontSize: heights * 0.035, color: Colors.white))),
                      SizedBox(height: heights/30,),
                   Center(
                child: SlidingSwitch(
                  value:  _isSecondPage,
                  width: 250,
                  onChanged:  _toggleSwitch,
                  height: 55,
                  animationDuration: const Duration(milliseconds: 400),
                  onTap: () {},
                  onDoubleTap: () {},
                  onSwipe: () {},
                  textOff: "Create",
                  textOn: "Join",
                  colorOn: Colors.white,
                  colorOff: const Color(0xff6682c0),
                  background:const Color(0xff0e104b),
                  buttonColor: const Color(0xff0e19ff),
                  inactiveColor: Colors.white,
                ),
            ),
                      Container(
                        height: 400,
                        child: _isSecondPage? Myjoin():Mycreate(),
                      )
                      // Container(
                      //   height: 50,
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: widget.categories.length,
                      //     itemBuilder: (context, index) {
                      //       final category = widget.categories[index];
                      //       return GestureDetector(
                      //           onTap: () {
                      //             setState(() {
                      //               _selectedCategory = category;
                      //             });
                      //           },
                      //           child:Container(
                      //             height:heights/20 ,
                      //             width: heights/7,
                      //             color: _selectedCategory == category? Colors.orange:Colors.red,
                      //             child: Container(alignment: Alignment.center,
                      //               color:_selectedCategory == category?
                      //               Colors.indigo[900]:Colors.orangeAccent,
                      //               child: Text(category.name, style: _selectedCategory == category?
                      //               RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white):RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                      //               ),
                      //             ),
                      //           )
                      //       );
                      //     },
                      //   ),
                      // ),
                      // if (_selectedCategory != null)
                      //   Container(
                      //     height: heights*0.75,
                      //     child: ListView.builder(
                      //       shrinkWrap: true,
                      //       itemCount: _selectedCategory!.subcategories.length,
                      //       itemBuilder: (context, index) {
                      //         final subcategory = _selectedCategory!.subcategories[index];
                      //         return Padding(
                      //           padding:  EdgeInsets.all(15.0),
                      //           child: Container(
                      //             padding:  EdgeInsets.all(8.0),
                      //             height: heights*0.06,
                      //             decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue[900]),
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 Container(
                      //                   height: heights/20,
                      //                   width: widths/10,
                      //                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subcategory.photoone))),
                      //                   child: Center(
                      //                     child: RichText(
                      //                       text: TextSpan(text:subcategory.title, style: RighteousMedium.copyWith(fontSize: heights* 0.019, color: Colors.white)),
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 ElevatedButton(
                      //                     style: ElevatedButton.styleFrom(
                      //                         minimumSize: Size(30,30)
                      //                     ),
                      //                     onPressed: (){},
                      //                     child: Row(
                      //                       children: [
                      //                         Text('$minutes', style: RighteousMedium.copyWith(fontSize: heights* 0.019, color: Colors.white)),
                      //                         Text(':$seconds', style: RighteousMedium.copyWith(fontSize: heights* 0.019, color: Colors.white)),
                      //                       ],
                      //                     )
                      //                 ),
                      //                 Container(
                      //                   height: heights/20,
                      //                   width: widths/10,
                      //                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subcategory.photo))),
                      //                   child:Center(
                      //                     child: RichText(
                      //                       text: TextSpan(text:subcategory.titleone, style: RighteousMedium.copyWith(fontSize: heights* 0.019, color: Colors.white)),
                      //                     ),
                      //                   ),
                      //                 ),
                      //
                      //               ],
                      //             ),
                      //           ),
                      //         );
                      //       },
                      //     ),
                      //   ),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: -5,
                right: 0,
                child: InkWell(
                  child: Image.asset(AppAsset.imagesCross,
                      height: heights / 20),
                  onTap: () {
                    Audio.sound();
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        )),
    );




  }
}


