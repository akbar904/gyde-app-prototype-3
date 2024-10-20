import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
  // State variables
  String _verificationCode = '';

  // Getter for the verification code
  String get verificationCode => _verificationCode;

  // Method to update the verification code
  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  // Method to validate the verification code
  bool validateCode(String inputCode) {
    // Add your validation logic here
    return inputCode == _verificationCode;
  }

  // Method to handle the submission of the verification code
  Future<void> submitCode() async {
    setBusy(true);
    try {
      // Add your submission logic here
      // e.g., call an API to verify the code
    } catch (e) {
      // Handle any errors
    } finally {
      setBusy(false);
    }
  }

  // Method to resend the verification code
  Future<void> resendCode() async {
    setBusy(true);
    try {
      // Add your resend logic here
      // e.g., call an API to resend the code
    } catch (e) {
      // Handle any errors
    } finally {
      setBusy(false);
    }
  }
}
