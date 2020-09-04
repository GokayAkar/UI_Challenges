import 'package:flutter/material.dart';
import 'package:ui_challenges/second_week/main_part.dart';

class BottomPart extends StatefulWidget {
  @override
  _BottomPartState createState() => _BottomPartState();
}

class _BottomPartState extends State<BottomPart> {
  FlatButton button(String title, double buttonWidth, double mediaQueryHeight,
      double mediaQueryWidth, Color buttonColor) {
    return FlatButton(
        onPressed: () => Navigator.pushNamed(context, SecondWeek.secondWeek),
        child: Container(
          height: mediaQueryHeight * 0.08,
          width: mediaQueryWidth * buttonWidth,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontSize: mediaQueryHeight * 0.02),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: buttonColor),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = (MediaQuery.of(context).size.width);
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(mediaQueryHeight * 0.1),
            topLeft: Radius.circular(mediaQueryHeight * 0.1),
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: mediaQueryHeight * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(mediaQueryHeight * 0.02),
              height: mediaQueryHeight * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 30,
                    spreadRadius: 7,
                  ),
                ],
              ),
              width: mediaQueryWidth * 0.8,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email or Phone Number',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            button(
                "Login", 0.5, mediaQueryHeight, mediaQueryWidth, Colors.orange),
            Text(
              'Continue with social media',
              style: TextStyle(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button("Facebook", 0.4, mediaQueryHeight, mediaQueryWidth,
                    Colors.blue),
                button("Github", 0.4, mediaQueryHeight, mediaQueryWidth,
                    Colors.black)
              ],
            )
          ],
        ),
      ),
    );
  }
}
