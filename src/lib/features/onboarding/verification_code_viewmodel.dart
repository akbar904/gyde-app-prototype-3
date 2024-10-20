import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
  // The code entered by the user
  String _verificationCode = '';

  // Getter for the verification code
  String get verificationCode => _verificationCode;

  // Method to update the verification code
  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  // Method to verify the code
  Future<bool> verifyCode() async {
    setBusy(true);
    // Simulate a network call to verify the code
    await Future.delayed(Duration(seconds: 2));
    setBusy(false);
    // This is just a placeholder for actual verification logic
    return _verificationCode == '123456';
  }

  // Method to resend the code
  Future<void> resendCode() async {
    setBusy(true);
    // Simulate a network call to resend the code
    await Future.delayed(Duration(seconds: 2));
    setBusy(false);
    // Logic to handle resending the code
  }
}
