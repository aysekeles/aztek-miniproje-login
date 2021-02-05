import 'package:aztek/components/already_have_an_account_acheck.dart';
import 'package:aztek/components/rounded_button.dart';
import 'package:aztek/components/rounded_input_field.dart';
import 'package:aztek/components/rounded_password_field.dart';
import 'package:aztek/ekranlar/Login/login_screen.dart';
import 'package:aztek/ekranlar/Signup/components/background.dart';
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
              "KAYDOL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/teknodonanim.jpg"),
            ),
            RoundedInputField(
              hintText: "AD",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "SOYAD",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "MAİL",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "KAYDOL",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
          ],
        ),
      ),
    );
  }
}
