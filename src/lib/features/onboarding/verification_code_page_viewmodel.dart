import 'package:stacked/stacked.dart';

class VerificationCodePageViewModel extends BaseViewModel {
  // Placeholder for the verification code entered by the user
  String _verificationCode = '';

  // Getter for the verification code
  String get verificationCode => _verificationCode;

  // Method to update the verification code
  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  // Method to verify the code
  Future<void> verifyCode() async {
    setBusy(true);

    // Simulated verification process
    await Future.delayed(Duration(seconds: 2));

    // Logic for verification goes here
    // e.g., compare with a pre-defined code or send to server for verification

    setBusy(false);
  }
}
