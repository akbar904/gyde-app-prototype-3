import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';

  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String newPhoneNumber) {
    _phoneNumber = newPhoneNumber;
    notifyListeners();
  }

  Future<void> submitPhoneNumber() async {
    // Add logic to handle phone number submission, e.g., networking or navigation
  }
}
