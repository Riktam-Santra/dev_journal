import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Dev.Journal",
                style: GoogleFonts.rubik().copyWith(fontSize: 75),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 25,
                ),
                child: Row(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxHeight: 600,
                        maxWidth: 600,
                      ),
                      color: const Color.fromARGB(255, 30, 30, 30),
                    ),
                    Container(
                      constraints: const BoxConstraints(
                        maxHeight: 600,
                        maxWidth: 600,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: GoogleFonts.rubik().copyWith(fontSize: 60),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              "Sign in to sync your journal and continue from anywhere you want",
                              style: GoogleFonts.rubik().copyWith(
                                fontSize: 32,
                              ),
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 30, 30, 30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 25,
                                  horizontal: 50,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "SIGN IN WITH GOOGLE",
                                      style: GoogleFonts.rubik()
                                          .copyWith(fontSize: 30),
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 50,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
