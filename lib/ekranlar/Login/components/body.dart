import 'package:aztek/components/already_have_an_account_acheck.dart';
import 'package:aztek/components/rounded_button.dart';
import 'package:aztek/components/rounded_input_field.dart';
import 'package:aztek/components/rounded_password_field.dart';
import 'package:aztek/ekranlar/Login/components/background.dart';
import 'package:aztek/ekranlar/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GİRİŞ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/teknodonanim.jpg"),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "MAIL",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
