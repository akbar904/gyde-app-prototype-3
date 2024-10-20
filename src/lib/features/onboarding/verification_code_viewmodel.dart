import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
  // Property to store the verification code entered by the user
  String _verificationCode = '';

  // Getter for the verification code
  String get verificationCode => _verificationCode;

  // Setter for the verification code
  void setVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners(); // Notify listeners to update the UI
  }

  // Method to verify the entered code
  Future<bool> verifyCode() async {
    setBusy(true);
    // Simulate a network call to verify the code
    await Future.delayed(Duration(seconds: 2));
    setBusy(false);
    // For demonstration purposes, assume the code '1234' is correct
    return _verificationCode == '1234';
  }
}
