import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart'as http;
import 'package:ludo/Ludo/UI/constant/images.dart';
import 'package:ludo/Ludo/UI/constant/style.dart';
import 'package:ludo/audio.dart';
import 'package:ludo/main_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:upi_india/upi_india.dart';


class classic extends StatefulWidget {
  const classic({Key? key}) : super(key: key);

  @override
  State<classic> createState() => _classicState();
}

class _classicState extends State<classic> {

  /////////////////
  Future<UpiResponse>? _transaction;
  UpiIndia _upiIndia = UpiIndia();
  List<UpiApp>? apps;
  TextStyle header = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
  TextStyle value = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black
  );

  @override
  void initState() {
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }
  Future<UpiResponse> initiateTransaction(UpiApp app) async {

    var long2 = double.parse(amount.toString());
    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: "merchant969855.augp@aubank",
      receiverName: '100X Bet',
      transactionRefId: 'Razorpay0256',
      transactionNote: '100x',
      amount: long2,
    );
  }
  Widget displayUpiApps() {
    if (apps == null)
      return Center(child: CircularProgressIndicator());
    else if (apps!.length == 0)
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: header,
        ),
      );
    else
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Wrap(
            children: apps!.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap:
                app.name=='PhonePe'?(){}:
                    () {
                  _transaction = initiateTransaction(app);
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.memory(
                        app.icon,
                        height: 60,
                        width: 60,
                      ),
                      Text(app.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
  }
  String _upiErrorHandler(error) {
    switch (error) {
      case UpiIndiaAppNotInstalledException:
        return 'Requested app not installed on device';
      case UpiIndiaUserCancelledException:
        return 'You cancelled the transaction';
      case UpiIndiaNullResponseException:
        return 'Requested app didn\'t return any response';
      case UpiIndiaInvalidParametersException:
        return 'Requested app cannot handle the transaction';
      default:
        return 'Please Enter Amount';
    }
  }
  void _checkTxnStatus(String status) {
    switch (status) {
      case UpiPaymentStatus.SUCCESS:

      // addmony();
        print('Transaction Successful');
        break;
      case UpiPaymentStatus.SUBMITTED:
        print('Transaction Submitted');
        break;
      case UpiPaymentStatus.FAILURE:
        print('Transaction Failed');
        break;
      default:
        print('Received an Unknown transaction status');
    }
  }
  Widget displayTransactionData(title, body) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title: ", style: header),
          Flexible(
              child: Text(
                body,
                style: value,
              )),
        ],
      ),
    );
  }
  var wallet;


  //////////////////////////////

  TextEditingController amount = TextEditingController();
  int _selectedItemIndex = -1;
  int _belowItemIndex = 1;// Initialize with a value that won't match any index
  bool _isButtonEnabled = false;
  List<int> dataItems = [1, 5, 10, 30, 100, 300, 500,1000,2000];
  List<int> belowItems = [1,2,3,4];
  List<AssetImage> images = [];
  void _handleTextChange() {
    setState(() {
      _selectedItemIndex = 10; // Reset selected index
      _isButtonEnabled = amount.text.isNotEmpty;
    });
  }

  void _handleListItemSelected(int index) {
    setState(() {
      _selectedItemIndex = dataItems[index];
      amount.text = dataItems[index].toString(); // Update TextFormField text
      _isButtonEnabled = true;
    });
  }


  //circle avtar
  void _handleoneListItemSelected(int index) {
    setState(() {
      _belowItemIndex = belowItems[index];
      _isButtonEnabled = true;
    });
  }

  @override
  void dispose() {
    amount.dispose();
    super.dispose();
  }

  var catogery;

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
              height: height,
              width: width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAsset.imagesClassiccover),fit: BoxFit.fill),
                  border: Border.all(color: Colors.yellow.shade800, width: 2),borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      children: [
                        SizedBox(height: height/4.2,),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: height/20,
                            width: width/5,
                            // color: Colors.yellowAccent,
                            child: TextField(
                              decoration: InputDecoration(border: InputBorder.none),
                              readOnly: true,
                              cursorColor: Colors.transparent,
                              controller: amount,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                                style: RighteousMedium.copyWith(fontSize: height* 0.030, color: Colors.white),
                              onChanged: (text) {
                                _handleTextChange();
                              },
                          ),
                        ),
                        ),
                        SizedBox(height: height/25),
                        Center(child: Text("SELECT ENTRY AMOUNT", style: RighteousMedium.copyWith(fontSize: height* 0.019, color: Colors.white))),
                        SizedBox(height: height/38),
                        GridView.builder(
                            padding: EdgeInsets.symmetric(horizontal: height/30),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 120,
                                childAspectRatio: 3.5/1.5,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                            ),
                            itemCount: dataItems.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return GestureDetector(
                                onTap: () {
                                  _handleListItemSelected(index);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration( color: _selectedItemIndex == dataItems[index] ? Colors.orangeAccent: Colors.transparent,border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          '₹  ' + dataItems[index].toString(),
                                            style: RighteousMedium.copyWith(fontSize: height* 0.019, color: Colors.white)),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            }),
                        SizedBox(height: height/50),
                        Center(child: Text("DEDUCTED FROM", style: RighteousMedium.copyWith(fontSize: height* 0.019, color: Colors.white))),
                        Center(child: Text("MAIN WALLET: ₹100 |  WIN WALLET: ₹100 | BONUS WALLET:\n                                               ₹100",style: RighteousMedium.copyWith(fontSize: height* 0.014, color: Colors.white) ,)),
                        // Container(
                        //   // color: Colors.red,
                        //   height: height/20,
                        //   width: width/5,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Text("MAIN WALLET: ₹100 |",style: RighteousMedium.copyWith(fontSize: height* 0.014, color: Colors.white)),
                        //       SizedBox(width: width/65,),
                        //       Text("WIN WALLET: ₹100 |",style: RighteousMedium.copyWith(fontSize: height* 0.014, color: Colors.white)),
                        //       SizedBox(width: width/65,),
                        //       Text("BONUS WALLET:₹10",style: RighteousMedium.copyWith(fontSize: height* 0.014, color: Colors.white)),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(height: height/25),
                        Center(child: Text("SELECT GOTI COLOUR", style: RighteousMedium.copyWith(fontSize: height* 0.022, color: Colors.white)),),
                        SizedBox(height: height/10),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: height/10),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 50,
                                  childAspectRatio: 3/2,
                                  mainAxisSpacing: 1),
                              itemCount: belowItems.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _handleoneListItemSelected(index);
                                      },
                                      child: CircleAvatar(
                                        radius: height/30,
                                        backgroundColor: Colors.black,
                                        child: CircleAvatar(
                                          radius: height/5,
                                          backgroundColor: _belowItemIndex == belowItems[index] ? Colors.red: Colors.transparent,),
                                        ),
                                    ),

                                    _belowItemIndex ==  belowItems[index] ?
                                    Center(
                                      child: const CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.transparent,
                                        child: Icon(Icons.check_outlined, size: 20),
                                      ),
                                    )
                                        : Container(),
                                  ],
                                );

                              }),
                        ),
                        SizedBox(height: height/14,),
                        InkWell(
                          onTap: (){
                            Audio.sound();
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => MainScreen()));

                          },
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.yellowAccent,
                              height: height/20,
                              child: Text("PLAY",style:RighteousMedium.copyWith(fontSize: height* 0.025, color: Colors.black))
                          ),
                        )
                        // TextButton(
                        //     onPressed: (){
                        //       Audio.sound();
                        //       Navigator.pushReplacement(
                        //           context, MaterialPageRoute(builder: (context) => MainScreen()));
                        //     },
                        //     child: Center(child: Text("PLAY",style:RighteousMedium.copyWith(fontSize: height* 0.025, color: Colors.black))),
                        // ),

      ]),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                child: Image.asset(AppAsset.imagesCross,
                    height: height/ 20),
                onTap: () {
                  Audio.sound();
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 50,
              left: 119,
              child: Text("CLASSIC LUDO",style: RighteousMedium.copyWith(fontSize: height* 0.025, color: Colors.white),)
            ),

          ],
        )
      ),
    );
  }

}


