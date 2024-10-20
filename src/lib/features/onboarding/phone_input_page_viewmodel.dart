import 'package:stacked/stacked.dart';

class PhoneInputPageViewModel extends BaseViewModel {
  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  void updatePhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  Future<void> verifyPhoneNumber() async {
    // Logic to verify phone number
    setBusy(true);
    try {
      // Simulate a network call or verification process
      await Future.delayed(Duration(seconds: 2));
      // Assuming the verification process was successful
      print('Verification successful for phone number $_phoneNumber');
    } catch (e) {
      print('Verification failed: $e');
    } finally {
      setBusy(false);
    }
  }
}
