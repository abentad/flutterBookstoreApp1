import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App name"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 230.0,
                // color: Colors.orange,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0, left: 15.0),
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/uppper1.jpg'),
                            fit: BoxFit.fill,
                          ),
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.white, width: 2.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: Offset(2, 11),
                              blurRadius: 10.0,
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0, left: 15.0),
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/upper2.jpg'),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.white, width: 2.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: Offset(2, 11),
                              blurRadius: 10.0,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('BESTSELLERS',
                  style: TextStyle(color: Colors.grey[600])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 55.0),
              child: Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Writing A Good Headline For \nYour Advertisement',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'New book hot list',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "serif",
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        // color: Colors.orange,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0, left: 15.0),
                              height: 180,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/1.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: Colors.white, width: 2.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      offset: Offset(2, 11),
                                      blurRadius: 10.0,
                                    ),
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10.0, left: 15.0),
                              height: 180,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/2.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: Colors.white, width: 2.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      offset: Offset(2, 11),
                                      blurRadius: 10.0,
                                    ),
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10.0, left: 15.0),
                              height: 180,
                              width: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/3.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: Colors.white, width: 2.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      offset: Offset(2, 11),
                                      blurRadius: 10.0,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 40.0,
        showSelectedLabels: false,
        selectedFontSize: 0,
        showUnselectedLabels: false,
        unselectedFontSize: 0,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Setting"),
        ],
      ),
    );
  }
}
