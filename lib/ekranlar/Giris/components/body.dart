import 'package:aztek/components/rounded_button.dart';
import 'package:aztek/ekranlar/Giris/components/background.dart';
import 'package:aztek/ekranlar/Login/login_screen.dart';
import 'package:aztek/ekranlar/Signup/signup_screen.dart';
import 'package:aztek/sabirler.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "AZTEK'e Hoşgeldiniz!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/teknodonanim.jpg"),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "GİRİS",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "KAYDOL",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
