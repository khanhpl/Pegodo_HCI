import 'package:flutter/material.dart';
import 'package:pegoda/MyLib/class/coupon.dart';
import 'package:pegoda/MyLib/class/pcc.dart';
import 'package:pegoda/MyLib/class/pet.dart';
import 'package:pegoda/MyLib/models/show_coupon_on_home_screen.dart';
import 'package:pegoda/MyLib/models/show_pcc_item.dart';
import 'package:pegoda/screens/customer/cus_main/up_nav_bar.dart';
import '../../../MyLib/constants.dart' as Constants;
import '../../../MyLib/globals.dart' as Globals;
import 'package:carousel_pro/carousel_pro.dart';

class CusHomeScreen extends StatefulWidget {
  @override
  State<CusHomeScreen> createState() => _CusHomeScreenState();
}

class _CusHomeScreenState extends State<CusHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;

    List<PCC> _pccList = Globals.pccList;
    List<Pet> _petList = Globals.petList;
    List<Coupon> _couponList = Globals.couponList;

    return Scaffold(
      appBar: UpAppBar(context),
      body: Material(
        child: Container(
          color: Colors.white,
          padding:
              EdgeInsets.fromLTRB(_pageWidth * 0.03, 0, _pageWidth * 0.03, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: _pageHeight * 0.03),
                //slide
                Container(
                  height: _pageHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: CaroselImage,
                ),

                //danh m???c
                SizedBox(height: _pageHeight * 0.03),
                Row(children: [
                  Container(
                    child: Text(
                      'Danh m???c',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: _pageHeight * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/cus/main_screen/danhmuc.jpg'),
                    height: _pageHeight * 0.06,
                  )
                ]),
                SizedBox(height: _pageHeight * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // SizedBox(width: _pageWidth * 0.03),
                      //Trung t??m n???i b???t
                      Column(
                        children: [

                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/neareastPCCScreen');
                            },
                            child: Image.asset(
                              'assets/cus/main_screen/center_ic.png',
                              height: _pageWidth * 0.3 * 0.33,
                              width: _pageWidth * 0.3 * 0.33,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          SizedBox(height: _pageHeight * 0.03),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Trung t??m \ng???n nh???t',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: _pageWidth * 0.03),
                      //D???ch v??? n???i b???t
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/orderHistoryScreen');
                            },
                            child: Image.asset(
                              'assets/cus/main_screen/orderhistory.png',
                              height: _pageWidth * 0.3 * 0.33,
                              width: _pageWidth * 0.3 * 0.33,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          SizedBox(height: _pageHeight * 0.03),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'L???ch s??? ?????t l???ch',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: _pageWidth * 0.03),
                      //C??u h???i th?????ng g???p
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/questionScreen');
                            },
                            child: Image.asset(
                              'assets/cus/main_screen/question_ic.png',
                              height: _pageWidth * 0.3 * 0.33,
                              width: _pageWidth * 0.3 * 0.33,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          SizedBox(height: _pageHeight * 0.03),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'C??u h???i \nth?????ng g???p',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: _pageWidth * 0.03),
                      //T?? v???n tr???c tuy???n
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/chatScreen');
                            },
                            child: Image.asset(
                              'assets/cus/main_screen/chat_online_ic.png',
                              height: _pageWidth * 0.3 * 0.33,
                              width: _pageWidth * 0.3 * 0.33,
                            ),
                            padding: EdgeInsets.all(0),
                          ),
                          SizedBox(height: _pageHeight * 0.03),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'T?? v???n \ntr???c tuy???n',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Th?? c??ng c???a b???n
                SizedBox(height: _pageHeight * 0.03),

                Row(children: [
                  Container(
                    child: Text(
                      'D???ch v??? ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: _pageHeight * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width:_pageWidth * 0.03 ,),
                  Image(
                    image: AssetImage('assets/cus/main_screen/service_ic.png'),
                    height: _pageHeight * 0.06,
                  )
                ]),

                SizedBox(height: _pageHeight * 0.03),
                Row(children: [

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //spa grooming
                        FlatButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/cus/main_screen/groomingPet.png',
                            height: _pageWidth * 0.3 * 0.33,
                            width: _pageWidth * 0.3 * 0.33,
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        SizedBox(height: _pageHeight * 0.03),
                        Container(
                          child: Text(
                            'Spa & grooming',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ]),
                  SizedBox(width: _pageWidth * 0.03),
                  // kham benh
                  Column(children: [
                    FlatButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/cus/main_screen/khambenh.png',
                        height: _pageWidth * 0.3 * 0.33,
                        width: _pageWidth * 0.3 * 0.33,
                      ),
                      padding: EdgeInsets.all(0),
                    ),
                    SizedBox(height: _pageHeight * 0.03),
                    Container(
                      child: Text(
                        'Kh??m b???nh',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
                  //dat cho di dao
                  Column(children: [
                    FlatButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/cus/main_screen/capcuu.png',
                        height: _pageWidth * 0.3 * 0.33,
                        width: _pageWidth * 0.3 * 0.33,
                      ),
                      padding: EdgeInsets.all(0),
                    ),
                    SizedBox(height: _pageHeight * 0.03),
                    Container(
                      child: Text(
                        'C???p c???u ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
                  //cap cuu 24/7
                  Expanded(
                    child: Column(children: [
                      FlatButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/cus/main_screen/xemthem.jpg',
                          height: _pageWidth * 0.3 * 0.33,
                          width: _pageWidth * 0.3 * 0.33,
                        ),
                        padding: EdgeInsets.all(0),
                      ),
                      SizedBox(height: _pageHeight * 0.03),
                      Container(
                        child: Text(
                          'D???ch v??? kh??c',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
                  ),

                ]),
                SizedBox(height: _pageHeight * 0.03),
                Row(children: [
                  Container(
                    child: Text(
                      'Trung t??m ????? xu???t',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: _pageHeight * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width:_pageWidth * 0.03 ,),
                  Image(
                    image: AssetImage('assets/cus/main_screen/store.jpg'),
                    height: _pageHeight * 0.06,
                  )
                ]),
                SizedBox(height: _pageHeight * 0.03),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: _pccList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      width: _pageWidth,
                      child: Column(
                        children: [
                          SizedBox(height: _pageHeight * 0.02),
                        ],
                      ),
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ShowPCCItem(pcc: _pccList[index]);
                  },
                ),

                //khuy???n m??i
                SizedBox(height: _pageHeight * 0.03),
                Row(children: [
                  Container(
                    child: Text(
                      'Khuy???n m??i',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: _pageHeight * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width:_pageWidth * 0.03 ,),
                  Image(
                    image: AssetImage('assets/cus/main_screen/khuyenmai.png'),
                    height: _pageHeight * 0.06,
                  )
                ]),
                Container(
                  height: _pageHeight * 0.35,
                  child: ListView.separated(
                    // physics: NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _couponList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: _pageWidth * 0.03);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ShowCouponOnHomeScreen(coupon: _couponList[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget CaroselImage = Center(
  child: Carousel(
    images: Globals.listSlideHome,
    autoplay: true,
    dotSize: 5,
    dotSpacing: 30,
    indicatorBgPadding: 0,
    autoplayDuration: Duration(seconds: 5),
    borderRadius: true,
    dotBgColor: Colors.black.withOpacity(0),
  ),
);
