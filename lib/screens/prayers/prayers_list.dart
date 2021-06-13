import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class PrayerSection extends StatelessWidget {
  const PrayerSection({
    Key? key,
    required this.controller,
    required this.itemsData,
    required this.topContainer,
  }) : super(key: key);

  final ScrollController controller;
  final List<Widget> itemsData;
  final double topContainer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: controller,
        itemCount: itemsData.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          double scale = 1.0;
          if (topContainer > 0.5) {
            scale = index + 0.5 - topContainer;
            if (scale < 0) {
              scale = 0;
            } else if (scale > 1) {
              scale = 1;
            }
          }
          return Opacity(
            opacity: scale,
            child: OpenContainer(
              closedColor: CupertinoColors.extraLightBackgroundGray.withOpacity(0),
              closedElevation: 0,
              closedShape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              closedBuilder: (context, action) {
                return Transform(
                  transform: Matrix4.identity()..scale(scale, scale),
                  alignment: Alignment.bottomCenter,
                  child: Align(
                      heightFactor: 0.7,
                      alignment: Alignment.topCenter,
                      child: itemsData[index]),
                );
              },
              openBuilder: (context, action) {
                return Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                  ),
                  body: Container(
                    child: Center(
                      child: itemsData[index]
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
