import 'package:flutter/material.dart';
import 'package:ui_challenges/third_week/credit_cart.dart';
import 'list_item.dart';
import 'Dummy_DATA.dart';

class SecondWeek extends StatelessWidget {
  static const secondWeek = '/secondWeek';
  final appBarColor = Colors.pink.shade300;

  @override
  Widget build(BuildContext context) {
    final double mediaQueryWidth = (MediaQuery.of(context).size.width);
    final double mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: appBarColor,
                size: mediaQueryHeight * 0.04,
              ),
              onPressed: () => Navigator.pushNamed(context, Checkout.creditCard))
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: appBarColor,
          ),
          onPressed: () => Navigator.pop(context),
          iconSize: mediaQueryHeight * 0.04,
        ),
        backgroundColor: Colors.blue[300],
        title: Text(
          "Meetup",
          style: TextStyle(color: appBarColor),
        ),
      ),
      body: ListView.builder(
        itemCount: ActivityList.activities.length,
        itemBuilder: (BuildContext ctx, int index) => ListItem(
          itemCount: ActivityList.activities.length,
          index: index,
        ),
      ),
    );
  }
}
