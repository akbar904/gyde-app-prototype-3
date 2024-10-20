import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  // Phone number entered by the user
  String _phoneNumber = '';

  // Getter for the phone number
  String get phoneNumber => _phoneNumber;

  // Setter for the phone number that notifies listeners of changes
  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  // Method to validate phone number
  bool validatePhoneNumber() {
    // Simple validation logic: Check if the phone number is non-empty and has 10 digits
    return _phoneNumber.isNotEmpty && _phoneNumber.length == 10;
  }

  // Method to initiate phone verification
  Future<void> initiatePhoneVerification() async {
    if (validatePhoneNumber()) {
      // Logic to initiate verification, e.g., send verification code
      // This is a placeholder for the actual implementation
      await Future.delayed(Duration(seconds: 2));
      // Notify listeners that the verification process is complete
      notifyListeners();
    }
  }
}
