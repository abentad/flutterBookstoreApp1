import 'package:BookStoreApp1/pages/Home_page/home_screen.dart';
import 'package:BookStoreApp1/pages/Onboarding_page/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookApp Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              fontFamily: "serif",
            ),
          ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: initScreen == 0 || initScreen == null
          ? OnBoardingScreen()
          : HomeScreen(),
      // home: OnBoardingScreen(),
    );
  }
}
