import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CapitalFirebaseUser {
  CapitalFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CapitalFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CapitalFirebaseUser> capitalFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CapitalFirebaseUser>(
      (user) {
        currentUser = CapitalFirebaseUser(user);
        return currentUser!;
      },
    );
