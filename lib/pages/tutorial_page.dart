import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TutorialPage extends ConsumerWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create your first Journal",
              style: GoogleFonts.rubik().copyWith(fontSize: 75),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                "Name your first Journal",
                style: GoogleFonts.rubik()
                    .copyWith(fontSize: 40, color: Colors.grey[800]),
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Journal name",
                  hintStyle: GoogleFonts.rubik().copyWith(fontSize: 24),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 75),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                splashRadius: 75,
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
