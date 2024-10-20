import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
  // Property to keep track of the verification code entered by the user
  String _verificationCode = '';

  // Getter for the verification code
  String get verificationCode => _verificationCode;

  // Method to update the verification code
  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  // Method to verify the code entered by the user
  Future<bool> verifyCode() async {
    // Simulated verification logic
    // In a real scenario, this could involve API calls to verify the code
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return _verificationCode == '123456'; // Assume '123456' is the correct code
  }

  // Method to handle the submission of the verification code
  Future<void> onSubmit() async {
    setBusy(true); // Indicate that a background process is running
    bool isVerified = await verifyCode();
    setBusy(false); // Indicate that the background process is complete

    if (isVerified) {
      // Logic to handle successful verification
      // This could involve navigation to the next page or displaying a success message
    } else {
      // Logic to handle failed verification
      // This could involve displaying an error message
    }
  }
}
