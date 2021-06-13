import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosary/screens/more/root.dart';
import 'package:rosary/screens/prayers/root.dart';
import 'package:rosary/screens/rosary/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rosary',
      theme: ThemeData.light().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
      ),
      home: RootWidget(),
    );
  }
}

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        appBar: AppBar(
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
          title: Container(
            child: Center(
              child: TabBar(
                  labelColor: Colors.black54,
                  unselectedLabelColor: Colors.black26,
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hands.png'),
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: 'Prayers',
                    ),
                    Tab(
                      text: 'Rosary',
                    ),
                    Tab(
                      text: 'More',
                    ),
                  ]),
            ),
          ),
          elevation: 0,
        ),
        body: tabViews(),
      ),
    );
  }

  TabBarView tabViews() {
    return TabBarView(
      children: [
        Prayers(),
        RosaryPrayer(),
        More()
      ],
    );
  }
}
