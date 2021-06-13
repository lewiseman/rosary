import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosary/data/prayers.dart';
import 'package:rosary/screens/prayers/daily.dart';
import 'package:rosary/screens/prayers/prayers_list.dart';

class Prayers extends StatefulWidget {
  const Prayers({Key? key}) : super(key: key);

  @override
  _PrayersState createState() => _PrayersState();
}

class _PrayersState extends State<Prayers> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = PRAYER_DATA;
    List<Widget> listItems = [];
    responseList.forEach(
      (post) {
        listItems.add(
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
                boxShadow: kElevationToShadow[4]),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        post["title"],
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        post["prayer"],
                        style:
                            const TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    listItems.add(Container(
      height: 100,
      color: Colors.black.withOpacity(0),
    ));
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 122.5;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 40;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              DailySection(
                  closeTopContainer: closeTopContainer,
                  size: size,
                  categoryHeight: categoryHeight,
                  categoriesScroller: categoriesScroller),
              ListTile(
                title: Text(
                  'Rosary Prayers',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              PrayerSection(controller: controller, itemsData: itemsData, topContainer: topContainer),
            ],
          ),
        ),
      ),
    );
  }
}
