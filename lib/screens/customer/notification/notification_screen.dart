import 'package:flutter/material.dart';
import '../../../MyLib/constants.dart' as Constants;

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _pageHeight = MediaQuery.of(context).size.height;
    var _pageWidth = MediaQuery.of(context).size.width;
    var _primaryColor = Constants.primaryColor;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _primaryColor,
        automaticallyImplyLeading: false,
        toolbarHeight: _pageHeight * 0.08,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Thông báo',
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
      body: Material(
        child: Container(
          padding: EdgeInsets.only(
              left: _pageWidth * 0.03, right: _pageHeight * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),

                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.withAlpha(30),

                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(children: [
                                    Image.asset("assets/app_ic.png",height: 33,width: 33,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "Tieu de",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ]),
                                ),

                                Text("1 gio"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/cus/main_screen/xemthem.jpg"),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("message"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.withAlpha(30),

                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(children: [
                                    Image.asset("assets/app_ic.png",height: 33,width: 33,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "Tieu de",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ]),
                                ),

                                Text("1 gio"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/cus/main_screen/xemthem.jpg"),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("message"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.withAlpha(30),

                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(children: [
                                    Image.asset("assets/app_ic.png",height: 33,width: 33,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "Tieu de",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ]),
                                ),

                                Text("1 gio"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/cus/main_screen/xemthem.jpg"),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("message"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.withAlpha(30),

                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(children: [
                                    Image.asset("assets/app_ic.png",height: 33,width: 33,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "Tieu de",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ]),
                                ),

                                Text("1 gio"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/cus/main_screen/xemthem.jpg"),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("message"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.withAlpha(30),

                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(children: [
                                    Image.asset("assets/app_ic.png",height: 33,width: 33,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "Tieu de",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                  ]),
                                ),

                                Text("1 gio"),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/cus/main_screen/xemthem.jpg"),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("message"),
                          )
                        ],
                      ),
                    ),
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
