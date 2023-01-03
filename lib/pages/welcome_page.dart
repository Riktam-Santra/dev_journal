import 'package:dev_journal/pages/tutorial_page.dart';
import 'package:dev_journal/services/notifiers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginBtnProvider = StateNotifierProvider<LoginButtonNotif, bool>(
      (ref) => LoginButtonNotif(),
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Dev.Journal",
                style: GoogleFonts.rubik().copyWith(fontSize: 75),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 25,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          color: const Color.fromARGB(255, 30, 30, 30),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sign In",
                                style:
                                    GoogleFonts.rubik().copyWith(fontSize: 60),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, bottom: 50),
                                child: Text(
                                  "Sign in to sync your journal and continue from anywhere you want",
                                  style: GoogleFonts.rubik().copyWith(
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                              Center(
                                child: Consumer(
                                  builder: (context, ref, child) {
                                    bool loggedIn = ref.watch(loginBtnProvider);
                                    return ElevatedButton(
                                      onPressed: loggedIn
                                          ? null
                                          : () async {
                                              ref
                                                  .read(
                                                      loginBtnProvider.notifier)
                                                  .login();
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      TutorialPage(),
                                                ),
                                              );
                                            },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 30, 30, 30),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 25,
                                          horizontal: 50,
                                        ),
                                        child: loggedIn
                                            ? const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              )
                                            : Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "SIGN IN WITH GOOGLE",
                                                    style: GoogleFonts.rubik()
                                                        .copyWith(fontSize: 30),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.google,
                                                      size: 50,
                                                    ),
                                                  )
                                                ],
                                              ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
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
      ),
    );
  }
}
