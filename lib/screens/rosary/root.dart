import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RosaryPrayer extends StatelessWidget {
  const RosaryPrayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            CupertinoColors.extraLightBackgroundGray,
            BlendMode.softLight,
          ),
          image: AssetImage('assets/mary.png'),
        ),
      ),
    );
  }
}
