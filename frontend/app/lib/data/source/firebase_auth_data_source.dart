import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/foundation/riverpod_compat.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final firebaseAuthDataSourceProvider = Provider<FirebaseAuthDataSource>(
  (ref) => FirebaseAuthDataSource(ref),
);

class FirebaseAuthDataSource {
  final Ref _ref;

  const FirebaseAuthDataSource(this._ref);

  Stream<User?> get authStateChange =>
      _ref.read(firebaseAuthProvider).authStateChanges();

  User? getCurrentUser() => _ref.read(firebaseAuthProvider).currentUser;

  Future<void> signInAnonymously() async {
    await _ref.read(firebaseAuthProvider).signInAnonymously();
  }

  Future<void> signOut() async {
    await _ref.read(firebaseAuthProvider).signOut();
  }
}
