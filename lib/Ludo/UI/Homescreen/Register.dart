import 'package:flutter/material.dart';
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';


import 'Loginpage.dart';

class Numbertwo extends StatefulWidget {
  const Numbertwo({super.key});

  @override
  State<Numbertwo> createState() => _NumbertwoState();
}

class _NumbertwoState extends State<Numbertwo> {
  bool invisible = true;

  bool?check1= false,
      check2 = true,
      check3 = false;
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.indigo[900],
        body: SingleChildScrollView(child:Container(
          height: heights,
          width: widths,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesPlainnew),fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Image.asset(AppAsset.imagesLogonew, height: heights/4,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: widths/1.1,
                    height: heights/9,
                    child: TextField(
                        style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
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
                          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/60,),
                              Icon(Icons.phone,color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          hintText: "Username",
                          hintStyle:RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white.withOpacity(0.6)),
                          fillColor: Color(0xff010a40).withOpacity(0.9),
                          filled: true
                      ),

                    ),
                  ),
                  SizedBox(
                    width: widths/1.1,
                    height: heights/9,
                    child: TextField(
                        style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
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
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/60,),
                              Icon(Icons.phone,color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          hintText: "Password",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white.withOpacity(0.6)),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(invisible){
                                invisible = false;
                              }else{
                                invisible= true;
                              }
                            });
                          }, icon: Icon(invisible == true?Icons.remove_red_eye:Icons.remove_red_eye),color: Colors.white.withOpacity(0.6)),
                          // Icon(Icons.remove_red_eye, color: Colors.white,),
                          fillColor: Color(0xff010a40).withOpacity(0.9),
                          filled: true
                      ),
                      obscureText: invisible,
                    ),
                  ),
                  SizedBox(
                    height: heights/9,
                    width: widths/1.1,
                    child: TextField(
                        style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
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
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/60,),
                              Icon(Icons.phone,color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          hintText: "Confirm Password",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white.withOpacity(0.6)),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(invisible){
                                invisible = false;
                              }else{
                                invisible= true;
                              }
                            });
                          }, icon: Icon(invisible == true?Icons.remove_red_eye:Icons.remove_red_eye),color: Colors.white.withOpacity(0.6)),
                          fillColor: Color(0xff010a40).withOpacity(0.9),
                          filled: true
                      ),
                      obscureText: invisible,
                    ),
                  ),
                  SizedBox(
                    height: heights/9,
                    width: widths/1.1,
                    child: TextField(
                        style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
                      decoration: InputDecoration(
                          counter: Offstage(),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
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
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/60,),
                              Icon(Icons.phone,color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          hintText: "Mobile Number",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white.withOpacity(0.6)),
                          fillColor:  Color(0xff010a40).withOpacity(0.9),
                          filled: true
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 10,

                    ),
                  ),
                  SizedBox(
                    height: heights/9,
                    width: widths/1.1,
                    child: TextField(
                        style: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
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
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: widths/60,),
                              Icon(Icons.phone,color: Colors.white),
                              Image.asset(AppAsset.imagesTextfiled)
                            ],
                          ),
                          hintText: "Enter Refer Code(Optional)",
                          hintStyle: RighteousMedium.copyWith(fontSize: heights * 0.019, color: Colors.white.withOpacity(0.6)),
                          fillColor:  Color(0xff010a40).withOpacity(0.9),
                          filled: true
                      ),

                    ),
                  ),

                ],
              ),

              Container(
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: check1,
                        onChanged: (bool?value)
                        {
                          setState(() {
                            check1 = value;
                          });
                        }
                    ),
                    Text("I have read and agreed PRIVACY POLICY \n and USER AGREEMENT", style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white),)
                  ],
                ),
              ),

              Container(
                height: heights/15,
                width: widths/2.8,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.buttonButtonnew),fit: BoxFit.fill),
                    border: Border.all(color: Colors.white,width: 3),borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Register",style:RighteousMedium.copyWith(fontSize: heights * 0.025, color: Colors.black))),
              ),
              Container(
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have You Already an Account?", style: RighteousMedium.copyWith(fontSize: heights * 0.016, color: Colors.white)),
                    InkWell(
                      child: Text("  SignIn", style: RighteousMedium.copyWith(fontSize: heights * 0.017, color: Colors.yellow),),
                      onTap: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) =>numberone())
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )
        )

    );
  }
}

