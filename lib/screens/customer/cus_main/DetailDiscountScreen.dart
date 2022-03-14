import 'package:flutter/material.dart';
import 'package:pegoda/MyLib/constants.dart' as Constants;
import 'package:pegoda/MyLib/class/coupon.dart';

class DetailDiscountScreen extends StatelessWidget {
  final Coupon coupon;
  DetailDiscountScreen({Key? key, required this.coupon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin"),
        centerTitle: true,
        backgroundColor: Constants.primaryColor,
      ),
      body: Stack(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              constraints:
                  BoxConstraints.expand(width: double.infinity, height: 300),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(coupon.couponImage), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Giá ưu đãi: " + coupon.couponValue,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Nội dung: " + coupon.couponContent,
              style: TextStyle(fontSize: 25),
            ),
          ]),

        ],
      ),
    );
  }
}
