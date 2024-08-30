import 'package:firebase_auth/firebase_auth.dart';

Future<String> changePassword(
    String currentPassword, String newPassword, String email) async {
  try {
    User? user = FirebaseAuth.instance.currentUser;

    // Reauthenticate the user.
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );
    await user?.reauthenticateWithCredential(credential);

    // If reauthentication is successful, change the password.
    await user?.updatePassword(newPassword);

    // Password changed successfully.
    return 'Password changed successfully.';
  } catch (e) {
    // Handle reauthentication errors and password change errors.
    return 'Error changing password: $e';
  }
}