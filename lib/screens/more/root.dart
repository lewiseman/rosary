import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(
              'How to pray the Rosary',
              style: GoogleFonts.poppins(),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {},
            ),
            tileColor: CupertinoColors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(
              'Share App',
              style: GoogleFonts.poppins(),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {},
            ),
            tileColor: CupertinoColors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(
              'Change language',
              style: GoogleFonts.poppins(),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {},
            ),
            tileColor: CupertinoColors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(
              'Exit',
              style: GoogleFonts.poppins(),
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {},
            ),
            tileColor: CupertinoColors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
