import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../MyLib/constants.dart' as Constants;

class RatingScreen extends StatefulWidget {
  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  var _primaryColor = Constants.primaryColor;
  var _bgColor = Constants.bgColor;
  var _boxColor = Constants.boxColor;
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _primaryColor,
        toolbarHeight: _pageHeight * 0.08,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Đánh giá dịch vụ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: _pageHeight * 0.03,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(_pageWidth*0.03, 0, _pageWidth*0.03, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: _pageHeight * 0.1),
              Container(
                height: _pageHeight * 0.15,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: _primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: _pageHeight * 0.1,
                      width: _pageWidth * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/app_ic.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Đánh giá dịch vụ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            RatingBar.builder(
                              itemSize: 20.0,
                              initialRating: 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Constants.starColor,
                                // size: 10.0,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _pageHeight*0.04),
              Container(
                padding: EdgeInsets.only(left: _pageWidth * 0.03),
                alignment: Alignment.center,
                width: _pageWidth,
                height: _pageHeight * 0.15,
                decoration: BoxDecoration(
                  color: _boxColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color:  Colors.black38),
                ),
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration.collapsed(
                    hintText: "Mô tả trải nghiệm của bạn(Không bắt buộc)",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              SizedBox(height: _pageHeight*0.04),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) => _primaryColor),
                ),
                onPressed: () {
                  _showConfirmDialog();
                },
                child: Container(
                  width: _pageWidth,
                  alignment: Alignment.center,
                  child: Text('Xác nhận'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _showConfirmDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xác nhận đánh giá'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Xác nhận đánh giá'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Xác nhận',style: TextStyle(color: _primaryColor),),
              onPressed: () {
                Navigator.pushNamed(context, '/ratingSuccessScreen');
              },
            ),
            TextButton(
              child: Text('Hủy',style: TextStyle(color: _primaryColor),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
