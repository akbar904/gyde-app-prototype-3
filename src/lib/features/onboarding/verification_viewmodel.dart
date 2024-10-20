import 'package:stacked/stacked.dart';

class VerificationViewModel extends BaseViewModel {
  String _verificationCode = '';
  String get verificationCode => _verificationCode;

  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  Future<void> verifyCode() async {
    setBusy(true);
    // Add business logic to verify the code here
    await Future.delayed(Duration(seconds: 2)); // Simulate a network call
    setBusy(false);
    // Handle success or failure of code verification
  }

  void resendCode() {
    // Logic to resend the verification code
    notifyListeners();
  }
}
