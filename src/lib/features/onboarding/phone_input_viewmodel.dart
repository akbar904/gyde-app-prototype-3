import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String newPhoneNumber) {
    _phoneNumber = newPhoneNumber;
    notifyListeners();
  }

  Future<void> submitPhoneNumber() async {
    setBusy(true);
    try {
      // Add logic to handle phone number submission, e.g., API call
      // For example:
      // await _apiService.submitPhoneNumber(_phoneNumber);
    } catch (e) {
      // Handle errors
    } finally {
      setBusy(false);
    }
  }
}
