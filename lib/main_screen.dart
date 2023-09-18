import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/dimension.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/ludo_provider.dart';
import 'package:ludo/widgets/board_widget.dart';
import 'package:ludo/widgets/dice_widget.dart';
import 'package:provider/provider.dart';

import 'Ludo/UI/constant/style.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.yellow,
    //     flexibleSpace: Container(
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //             fit: BoxFit.fill,
    //             image: AssetImage(AppAsset.imagesClassicupper),))),
    //     leading: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: heights/70,vertical: heights/70),
    //         child: Container(
    //                decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(10),color: Colors.indigo),
    //              child: InkWell(
    //                onTap: (){
    //                  Navigator.pop(context);
    //                },
    //                  child: Icon(Icons.turn_left_outlined,color: Colors.yellowAccent,)
    //              ),
    //   ),
    // ),
    //     title: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Center(child: Text("Game Mode Classic",style: RighteousMedium.copyWith(fontSize: heights * 0.025, color: Colors.yellow))),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Container(
    //               height: 30,
    //               width: 20,
    //               decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesWinner))),
    //             ),
    //             SizedBox(width: widths/50,),
    //             Text("Winner",style: RighteousMedium.copyWith(fontSize: heights * 0.023, color: Colors.white))
    //           ],
    //         )
    //       ],
    //     ),
    //     actions: [
    //       Padding(
    //         padding: EdgeInsets.symmetric(horizontal: heights/60,vertical: heights/60),
    //         child: Container(
    //           width: widths/7,
    //           decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(10),color: Colors.indigo),
    //           child: Icon(Icons.settings,color: Colors.yellowAccent,),
    //         ),
    //       ),
    //
    //     ],
    //   ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAsset.imagesLudobg), fit: BoxFit.fill)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: heights/10,
              width: widths/0.1,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage(AppAsset.imagesClassicupper))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: heights/30,),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(10),color: Colors.indigo),
                        child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.turn_left_outlined,color: Colors.yellowAccent,)
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text("Game Mode Classic",style: RighteousMedium.copyWith(fontSize: heights * 0.025, color: Colors.yellow))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 20,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesWinner))),
                            ),
                            SizedBox(width: widths/40,),
                            Text("Winner",style: RighteousMedium.copyWith(fontSize: heights * 0.023, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: widths/7,
                      decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(10),color: Colors.indigo),
                      child: Icon(Icons.settings,color: Colors.yellowAccent,),
                    ),
                  ],
                ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BoardWidget(),
                // Center(
                //     child: SizedBox(
                //   width: 50,
                //   height: 50,
                //   child: DiceWidget(),
                // )),
              ],
             ),

            Padding(
              padding:  EdgeInsets.only(bottom: heights/10,left: heights/30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: heights/9,
                  width: widths/3.2,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesClassicdiceone),fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Player",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                          Container(
                            height: heights/19,
                            width: widths/10,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesAvatar0),),
                                border: Border.all(color: Colors.white),color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        height:heights/15,
                        width: widths/10,
                        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesDicephoto))),
                        child: DiceWidget(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: heights/10,right: heights/35),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: heights/9,
                  width: widths/3.3,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesClassicdicetwo),fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height:heights/15,
                        width: widths/10,
                        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesDicephoto))),
                        child: DiceWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          children: [
                            Text("Computer",style: RighteousMedium.copyWith(fontSize: heights * 0.018, color: Colors.white)),
                            Container(
                              height: heights/19,
                              width: widths/10,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesAvatar0),),
                                  border: Border.all(color: Colors.white),color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // winner length decide how maney winner in the game
            Consumer<LudoProvider>(
              builder: (context, value, child) => value.winners.length == 1
                  ? Container(
                      color: Colors.black.withOpacity(0.8),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/thankyou.gif"),
                            const Text("Thank you for playing 😙", style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center),
                            Text("The Winners is: ${value.winners.map((e) => e.name.toUpperCase()).join(", ")}", style: const TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center),
                            const Divider(color: Colors.white),
                            const Text("This game made with Flutter ❤️ by Mochamad Nizwar Syafuan", style: TextStyle(color: Colors.white, fontSize: 15), textAlign: TextAlign.center),
                            const SizedBox(height: 20),
                            const Text("Refresh your browser to play again", style: TextStyle(color: Colors.white, fontSize: 10), textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
