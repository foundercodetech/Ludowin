import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';

class Newcoins {
  String photo;
  String title;
  String money;
  Newcoins(this.photo, this.title, this.money);
}

class Mymoney extends StatefulWidget {
  const Mymoney({super.key});

  @override
  State<Mymoney> createState() => _MymoneyState();
}

class _MymoneyState extends State<Mymoney> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    List<Newcoins> addAmount = [
      Newcoins(AppAsset.buttonRupeeIcon, "20 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "50 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "100 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "150 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "250 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "300 Coins", AppAsset.buttonAddmoney),
      Newcoins(AppAsset.buttonRupeeIcon, "500 Coins", AppAsset.buttonAddmoney),

    ];
    return Scaffold(
      backgroundColor: Colors.black,
        body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              // height: heights * 0.8,
              // decoration: BoxDecoration(
              //     // color: Colors.grey,
              //     image: DecorationImage(
              //         image: AssetImage(AppAsset.imagesNewgolden),
              //         fit: BoxFit.fill)),
            height: heights,
              width: widths,
              decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),

              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: heights * 0.04,),
                  Center(child: Text("Shop", style: RighteousMedium.copyWith(fontSize: heights * 0.038, color: Colors.white))),
                  SizedBox(height: heights * 0.03,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Container(
                      height: heights*0.57,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: addAmount.length,
                          itemBuilder: (BuildContext, int index) {
                            return Card(
                                child: Container(
                              // color: Colors.red,
                              height: heights * 0.07,
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: heights*0.06,
                                    width: heights*0.06,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              addAmount[index].photo,),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text( addAmount[index].title,
                                      style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.black)
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: heights*0.01),
                                    child: Container(
                                      width: widths*0.24,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                addAmount[index].money,),
                                              fit: BoxFit.fill)),
                                    ),
                                  )
                                ],
                              ),
                            ));
                          }),
                    ),
                  )
                ],
              )),
          Positioned(
            top: 0,
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
    );



  }
}
