import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosary/data/prayers.dart';

class SinglePrayer extends StatelessWidget {
  final int num;
  const SinglePrayer({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      appBar: AppBar(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        elevation: 0,
        leading: IconButton(
          color: CupertinoColors.inactiveGray,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              left: -25,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  CupertinoColors.extraLightBackgroundGray.withOpacity(0.8),
                  BlendMode.srcOver,
                ),
                child: Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/pray_a.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  CupertinoColors.extraLightBackgroundGray.withOpacity(0.5),
                  BlendMode.srcOver,
                ),
                child: Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/pray_b.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      '${PRAYER_DATA[num]["name"]}',
                      style: GoogleFonts.poppins(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${PRAYER_DATA[num]["prayer"]}',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[850],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
