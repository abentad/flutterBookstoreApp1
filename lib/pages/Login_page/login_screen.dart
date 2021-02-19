import 'package:BookStoreApp1/pages/Login_page/local_widgets/customMaterialButton.dart';
import 'package:BookStoreApp1/pages/Login_page/screens/phoneSignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50.0),
              customMaterialButton(
                press: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => PhoneSignUp()));
                },
                icon: FontAwesomeIcons.phone,
                iconColor: Colors.green[300],
                label: "Sign up with phone number",
              ),
              SizedBox(height: 10.0),
              customMaterialButton(
                press: () {},
                icon: FontAwesomeIcons.google,
                iconColor: Colors.red[300],
                label: 'Continue with Google',
              ),
              SizedBox(height: 10.0),
              customMaterialButton(
                press: () {},
                icon: FontAwesomeIcons.facebook,
                iconColor: Colors.blue[300],
                label: 'Continue with Facebook',
              ),
              SizedBox(height: 10.0),
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                height: 50.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.orange[300],
                      size: 30.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Sign up with Email and password',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
