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
  final String name;
  final String photo;
  
  Subcategory({required this.photo,required this.name});
}



class Myinvite extends StatefulWidget {
   Myinvite({super.key});
  final List<Category> categories = [
  Category(
  name: 'Friend list',
  subcategories: [
    Subcategory(name: "Manisa",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "Esha",photo: AppAsset.imagesAvatar1),
    Subcategory(name: "player1",photo: AppAsset.imagesAvatar3),
    Subcategory(name: "player5",photo: AppAsset.imagesAvatar2),
    Subcategory(name: "meme",photo: AppAsset.imagesAvatar5),
    Subcategory(name: "Player400",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "meme",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "meme",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "player400",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "Meme",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "player400",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "Meme",photo: AppAsset.imagesAvatar0),
  ],
  ),
  Category(
  name: 'Accept friend',
  subcategories: [
    Subcategory(name: "Tanu",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "itsme",photo: AppAsset.imagesAvatar5),
    Subcategory(name: "Player400",photo: AppAsset.imagesAvatar1),
    Subcategory(name: "meme",photo: AppAsset.imagesAvatar3),
    Subcategory(name: "player400",photo: AppAsset.imagesAvatar0),
    Subcategory(name: "Meme",photo: AppAsset.imagesAvatar2),
  ],
  ),
  Category(
  name: 'Add friend',
  subcategories: [
    Subcategory(name: "Kitty",photo: AppAsset.imagesAvatar2),
    Subcategory(name: "Bella",photo: AppAsset.imagesAvatar5),

  ],
  ),
  ];

  @override
  State<Myinvite> createState() => _MyinviteState();
}

class _MyinviteState extends State<Myinvite> {

  Category? _selectedCategory;
  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.categories.isNotEmpty ? widget.categories[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          children: [
            Container(
                height: heights,
                width: widths,
                decoration: BoxDecoration(border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: heights/28,),
                      Text("INVITE",style: RighteousMedium.copyWith(fontSize: heights * 0.028, color: Colors.white)),
                      SizedBox(height: heights/30,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: heights/100),
                        child: Container(
                          width: heights/1.7,
                          height: heights/14,
                          // color: Colors.yellowAccent,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
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
                                    padding: EdgeInsets.symmetric(horizontal: heights/39,vertical: heights/100),
                                    child: Container(
                                      height: heights*0.02,
                                      width: widths*0.22,
                                        // color:_selectedCategory == category? Colors.red:Colors.blue[900],
                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color:_selectedCategory == category? Colors.red:Colors.blue[900]),
                                      child: Center(
                                        child: Text(category.name, style: _selectedCategory == category?
                                        RighteousMedium.copyWith(fontSize: heights * 0.014, color: Colors.white): RighteousMedium.copyWith(fontSize: heights * 0.014, color: Colors.white)
                                        ),
                                      ),
                                    ),
                                  )
                              );
                            },
                          ),
                        ),
                      ),
                      if (_selectedCategory != null)
                        Container(
                          height: heights*0.78,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _selectedCategory!.subcategories.length,
                              itemBuilder: (context, index) {
                                final subcategory = _selectedCategory!.subcategories[index];
                                return Padding(
                                  padding:  EdgeInsets.only(left: 20,right: 20,top: 5),
                                  child: Container(
                                    // padding:  EdgeInsets.all(10.0),
                                    height: heights*0.06,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.red[900]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: heights*0.02),
                                          child: Container(
                                              height: heights*0.6,
                                              width: widths*0.07,
                                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subcategory.photo)))),
                                        ),
                                        RichText(
                                          text: TextSpan(text:subcategory.name, style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white)),
                                        ),
                                        Icon(Icons.close,color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                )
            ),
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
            ),

          ],
        ),
    );
  }
}
