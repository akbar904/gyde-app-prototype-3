import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String newNumber) {
    _phoneNumber = newNumber;
    notifyListeners();
  }

  Future<void> submitPhoneNumber() async {
    // Logic to handle phone number submission
    // This can involve API calls or navigation to the next view
  }
}
