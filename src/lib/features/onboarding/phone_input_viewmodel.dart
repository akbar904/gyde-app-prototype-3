import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  bool get isPhoneNumberValid =>
      _phoneNumber.length == 10; // Assuming a 10-digit phone number

  void updatePhoneNumber(String newNumber) {
    if (_phoneNumber != newNumber) {
      _phoneNumber = newNumber;
      notifyListeners();
    }
  }

  Future<void> submitPhoneNumber() async {
    if (isPhoneNumberValid) {
      setBusy(true);
      try {
        // Simulate a network request or any other business logic
        await Future.delayed(Duration(seconds: 2));
        // Navigate to the next view or perform additional actions
      } catch (e) {
        // Handle error
      } finally {
        setBusy(false);
      }
    }
  }
}
