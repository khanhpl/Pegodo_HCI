import 'package:flutter/material.dart';
import 'package:pegoda/MyLib/class/account_choice.dart';
import '../../../MyLib/constants.dart' as Constants;
import '../../../MyLib/globals.dart' as globals;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CusAccountScreen extends StatefulWidget {
  @override
  State<CusAccountScreen> createState() => _CusAccountScreenState();
}

class _CusAccountScreenState extends State<CusAccountScreen> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    var _primaryColor = Constants.primaryColor;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Cá nhân"),
        backgroundColor: Constants.primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        color: Constants.bgColor,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Stack(
                        fit: StackFit.expand,
                        overflow: Overflow.visible,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/cus/account_screen/profileImage.jpg"),
                          ),
                          Positioned(
                            right: -10,
                            bottom: 0,
                            child: SizedBox(
                              width: 36,
                              height: 36,
                              child: TextButton(
                                  style: flatButtonStyle,
                                  onPressed: () {},
                                  child: Image.asset(
                                      "assets/cus/account_screen/iconGooglePlus.png")),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hieu",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Constants.boxColor,
                          primary: Colors.black87,
                          padding: EdgeInsets.all(15)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "Thông tin cá nhân",
                          )),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black26,
                            size: 20,
                          )
                        ],
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Constants.boxColor,
                          primary: Colors.black87,
                          padding: EdgeInsets.all(15)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "ảnh của tôi",
                          )),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black26,
                            size: 20,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 45,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Constants.boxColor,
                        primary: Colors.black87,
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "Quản lý thú cưng",
                          )),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black26,
                            size: 20,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 45,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Constants.boxColor,
                        primary: Colors.red,
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "Đăng xuất",
                            textAlign: TextAlign.center,
                          )),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        side: BorderSide(color: Colors.white)),
  );
}
