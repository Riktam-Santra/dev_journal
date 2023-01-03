import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginButtonNotif extends StateNotifier<bool> {
  LoginButtonNotif() : super(false);
  void login() {
    state = !state;
  }

  bool get value => state;
}
