import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
  String _verificationCode = '';

  String get verificationCode => _verificationCode;

  void onVerificationCodeChanged(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  Future<void> verifyCode() async {
    setBusy(true);

    // Simulate a network call for verification
    await Future.delayed(Duration(seconds: 2));

    setBusy(false);
    // Logic for code verification
    // You can set errors or navigate based on the result
  }

  void resendCode() {
    // Logic to resend the verification code
  }
}
