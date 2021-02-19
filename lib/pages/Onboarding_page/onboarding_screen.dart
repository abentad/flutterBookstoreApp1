import 'package:BookStoreApp1/pages/Login_page/login_screen.dart';
import 'package:BookStoreApp1/pages/Onboarding_page/local_Widgets/animated_dots.dart';
import 'package:BookStoreApp1/pages/Onboarding_page/local_Widgets/splashContent.dart';
import 'package:BookStoreApp1/pages/Onboarding_page/local_models/splash_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  //vars
  int currentPage = 0;
  final _pageController = PageController(initialPage: 0);

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween(begin: 50.0, end: 70.0).animate(
      CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller),
    );
    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        controller.reverse();
      else if (status == AnimationStatus.dismissed) controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: _pageController,
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return splachContent(
                    title: splashData[index]["title"],
                    subtitle: splashData[index]['subtitle'],
                    image: splashData[index]['image'],
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.red,
                child: Column(
                  children: [
                    // Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) =>
                            buildDot(index: index, currentPage: currentPage),
                      ),
                    ),
                    // Spacer(flex: 2),
                    SizedBox(height: 80.0),
                    currentPage == 3
                        ? SizedBox.shrink()
                        : Expanded(
                            child: Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (currentPage + 1 < splashData.length)
                                        currentPage++;
                                    });
                                    controller.stop();
                                    _pageController.animateToPage(
                                      currentPage,
                                      curve: Curves.decelerate,
                                      duration: Duration(milliseconds: 400),
                                    );
                                  },
                                  child: AnimatedBuilder(
                                    animation: controller,
                                    builder: (BuildContext context, _) {
                                      return Center(
                                        child: Container(
                                          height: animation.value,
                                          width: animation.value,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.deepOrange[800],
                                                offset: Offset(1, 3),
                                                blurRadius:
                                                    animation.value - 50,
                                              ),
                                            ],
                                            color: Colors.orange,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                    currentPage == 3
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  CupertinoPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              color: Colors.orange,
                              minWidth: double.infinity,
                              height: 50.0,
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
