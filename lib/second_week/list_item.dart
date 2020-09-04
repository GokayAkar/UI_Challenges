import 'package:flutter/material.dart';
import 'package:ui_challenges/second_week/Dummy_DATA.dart';

class ListItem extends StatelessWidget {
  final int itemCount;
  final int index;

  ListItem({this.itemCount, this.index});

  @override
  Widget build(BuildContext context) {
    final double mediaQueryWidth = (MediaQuery.of(context).size.width);
    final double mediaQueryHeight = MediaQuery.of(context).size.height;
    var activity = ActivityList.activities[index];
    double radius;
    if (ActivityList.activities.length - 1 == index) {
      radius = 0;
    } else
      radius = 50;

    Widget cirleAvatar(int index) {
      return CircleAvatar(
        child: Text(activity.otherParticipants[index].substring(0, 1)),
        radius: mediaQueryWidth * 0.05,
      );
    }

    return Container(
      color: Colors.pink[((index) * 100) + 200],
      child: Container(
        height: mediaQueryHeight * 0.1 * itemCount,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.pink[(index * 100) + 100],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              activity.time,
              style: TextStyle(
                  fontSize: mediaQueryHeight * 0.03, color: Colors.blue[600]),
            ),
            Text(
              activity.title,
              style: TextStyle(
                  fontSize: mediaQueryHeight * 0.032, color: Colors.grey[1000]),
            ),
            activity.isParticipating == null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.check_circle_outline,
                            size: mediaQueryHeight * 0.06,
                            color: Colors.blue[600],
                          ),
                          onPressed: null),
                      SizedBox(
                        width: mediaQueryWidth * 0.04,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.cancel,
                            size: mediaQueryHeight * 0.06,
                            color: Colors.blue[600],
                          ),
                          onPressed: null),
                    ],
                  )
                : Stack(
                    children: [
                      Container(
                        height: mediaQueryHeight * 0.1,
                        width: mediaQueryWidth * 1,
                      ),
                      Positioned(
                        child: cirleAvatar(0),
                        left: mediaQueryWidth * 0.05,
                      ),
                      Positioned(
                        child: cirleAvatar(1),
                        left: mediaQueryWidth * 0.1,
                      ),
                      Positioned(
                        child: cirleAvatar(2),
                        left: mediaQueryWidth * 0.15,
                      ),
                      Positioned(
                        child: cirleAvatar(3),
                        left: mediaQueryWidth * 0.2,
                      ),
                      Positioned(
                        child: cirleAvatar(4),
                        left: mediaQueryWidth * 0.25,
                      ),
                      Positioned(
                          left: mediaQueryWidth * 0.4,
                          top: mediaQueryHeight * 0.018,
                          child: Text(
                            '${activity.otherParticipants[0]} and ${activity.otherParticipants.length - 1} others',
                            style: TextStyle(
                                fontSize: mediaQueryHeight * 0.025,
                                color: Colors.blue[800]),
                          ))
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
