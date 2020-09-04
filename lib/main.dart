import 'package:flutter/material.dart';
import 'package:ui_challenges/third_week/animation.dart';
import 'package:ui_challenges/third_week/credit_cart.dart';
import 'first_week/bottom_part.dart';
import 'second_week/main_part.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: MyHomePage(), routes: {
      SecondWeek.secondWeek: (context) => SecondWeek(),
       Checkout.creditCard: (context) => Checkout(),
       CheckoutSuccess.thirdWeek: (context) => CheckoutSuccess(),
      
    });
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final double mediaQueryWidth = (MediaQuery.of(context).size.width);
    final double mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SingleChildScrollView(
          child: Container(
            height: mediaQueryHeight,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.orange[800],
                    Colors.orange[600],
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: mediaQueryHeight * 0.15),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: mediaQueryWidth * 0.07,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: mediaQueryHeight * 0.07,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQueryHeight * 0.01,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.only(
                              start: mediaQueryWidth * 0.05),
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: mediaQueryHeight * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                BottomPart(),
              ],
            ),
          ),
        ));
  }
}
