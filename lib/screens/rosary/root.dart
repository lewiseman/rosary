import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rosary/widgets/crucifix.dart';

class RosaryPrayer extends StatelessWidget {
  const RosaryPrayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                CupertinoColors.extraLightBackgroundGray,
                BlendMode.softLight,
              ),
              image: AssetImage('assets/mary.png'),
            ),
          ),
        ),
        Column(
          children: [
            head(),
            Container(
              decoration: BoxDecoration(),
              width: 500,
              height: 300,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Material(
                color: Colors.white.withOpacity(0),
                elevation: 8,
                child: Crucifix(),
              ),
            ),
          ],
        )
      ],
    );
  }

  Container head() {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0),
            backgroundImage: AssetImage('/crucifix_a.png'),
          ),
          Container(
            child: Text('A rosary prayer to mary'),
          ),
        ],
      ),
    );
  }
}
