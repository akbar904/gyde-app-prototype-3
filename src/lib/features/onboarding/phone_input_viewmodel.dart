import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';

  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String newNumber) {
    _phoneNumber = newNumber;
    notifyListeners();
  }

  Future<void> submitPhoneNumber() async {
    setBusy(true);
    // Logic to submit phone number, for example, send to verification service
    await Future.delayed(Duration(seconds: 2)); // Simulating network call
    setBusy(false);
  }
}
