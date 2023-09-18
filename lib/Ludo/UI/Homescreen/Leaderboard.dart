import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';


class Category {
  final String name;
  final List<Subcategory> subcategories;

  Category({required this.name, required this.subcategories});
}

class Subcategory {
  final String number;
  final String photo;
  final String title;
  final String win;
  final String status;

  Subcategory({required this.number,required this.photo,required this.title,required this.win,required this.status});
}


class Product extends StatefulWidget {
  final List<Category> categories = [
    Category(
      name: 'Daily',
      subcategories: [
        Subcategory(number: "1",photo:AppAsset.imagesAvatar0,title:"jatt ji",win: "400",status:"1"),
        Subcategory(number: "2",photo:AppAsset.imagesAvatar1,title:"deepak",win: "360",status: "1"),
        Subcategory(number: "3",photo:AppAsset.imagesAvatar3,title:"sk12",win: "260",status: "1"),
        Subcategory(number: "4",photo:AppAsset.imagesAvatar2,title:"gulab juneja",win: "250",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),
        // Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
        // Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
        // Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
        // Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

      ],
    ),
    Category(
      name: 'Weekly',
      subcategories: [
        Subcategory(number: "1",photo:AppAsset.imagesAvatar0,title:"jatt ji",win: "400",status:"1"),
        Subcategory(number: "2",photo:AppAsset.imagesAvatar1,title:"deepak",win: "360",status: "1"),
        Subcategory(number: "3",photo:AppAsset.imagesAvatar3,title:"sk12",win: "260",status: "1"),
        Subcategory(number: "4",photo:AppAsset.imagesAvatar2,title:"gulab juneja",win: "250",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),


      ],
    ),
    Category(
      name: 'Monthly',
      subcategories: [
        Subcategory(number: "1",photo:AppAsset.imagesAvatar0,title:"jatt ji",win: "400",status:"1"),
        Subcategory(number: "2",photo:AppAsset.imagesAvatar1,title:"deepak",win: "360",status: "1"),
        Subcategory(number: "3",photo:AppAsset.imagesAvatar3,title:"sk12",win: "260",status: "1"),
        Subcategory(number: "4",photo:AppAsset.imagesAvatar2,title:"gulab juneja",win: "250",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),
      ],
    ),
    Category(
      name: 'All Time',
      subcategories: [
        Subcategory(number: "1",photo:AppAsset.imagesAvatar0,title:"jatt ji",win: "400",status:"1"),
        Subcategory(number: "2",photo:AppAsset.imagesAvatar1,title:"deepak",win: "360",status: "1"),
        Subcategory(number: "3",photo:AppAsset.imagesAvatar3,title:"sk12",win: "260",status: "1"),
        Subcategory(number: "4",photo:AppAsset.imagesAvatar2,title:"gulab juneja",win: "250",status: "0"),
        Subcategory(number: "5",photo:AppAsset.imagesAvatar5,title:"sksingh",win: "210",status: "0"),
        Subcategory(number: "6",photo:AppAsset.imagesAvatar4,title:"chitranjan",win: "200",status: "0"),

      ],
    ),
  ];

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Category? _selectedCategory;
  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.categories.isNotEmpty ? widget.categories[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Categories List
                  SizedBox(height: height/30),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: height/100),
                    child: Container(
                      width: height/1.7,
                      height: height/14,
                      // color: Colors.yellowAccent,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.categories.length,
                        itemBuilder: (context, index) {
                          final category = widget.categories[index];
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedCategory = category;
                                });
                              },
                              child:Padding(
                                padding: EdgeInsets.symmetric(horizontal: height/80,vertical: height/100),
                                child: Container(
                                  height: height*0.02,
                                  width: width*0.18,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color:_selectedCategory == category?
                                    Colors.indigo.shade900:Colors.red[900], ),
                                  child: Text(category.name, style: _selectedCategory == category? RighteousMedium.copyWith(fontSize: height * 0.015, color: Colors.white): RighteousMedium.copyWith(fontSize: height * 0.015, color: Colors.white)
                                  ),
                                ),
                              )
                          );
                        },
                      ),
                    ),
                  ),
                  // SizedBox(height: height*0.0001,),
                  Container(
                    height: height*0.25,
                    width: width*0.90,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesLogoleaderboard),fit: BoxFit.fill),
                        border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(5))
                  ),
                  // Subcategories List with Images
                  if (_selectedCategory != null)
                    Container(
                      height: height*0.61,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _selectedCategory!.subcategories.length,
                          itemBuilder: (context, index) {
                            final subcategory = _selectedCategory!.subcategories[index];
                            return Padding(
                              padding:  EdgeInsets.all(9.0),
                              child: Container(
                                padding:  EdgeInsets.all(8.0),
                                width:width/20,
                                height: height/15,
                                decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.blue[900]),
                                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(subcategory.number,style: RighteousMedium.copyWith(fontSize: height * 0.019, color: Colors.white)),
                                    SizedBox(width: height/50),
                                    Container(
                                        height: height/20,
                                        width: height/10,
                                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subcategory.photo)))),
                                    SizedBox(width: height/13,),
                                    RichText(
                                      text: TextSpan(text:subcategory.title, style: RighteousMedium.copyWith(fontSize: height* 0.019, color: Colors.white)),
                                    ),
                                    Spacer(),
                                    RichText(
                                      text: TextSpan(text: subcategory.win, style: RighteousMedium.copyWith(fontSize: height* 0.019, color: Colors.white)),
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                child: Image.asset(AppAsset.imagesCross,
                    height: height / 20),
                onTap: () {
                  Audio.sound();
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}