import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PhoneInputViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  String? _phoneNumber;
  String? get phoneNumber => _phoneNumber;

  void setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  bool get canProceed => _phoneNumber != null && _phoneNumber!.isNotEmpty;

  Future<void> onNext() async {
    if (canProceed) {
      // Navigate to the next view (VerificationCodeView)
      await _navigationService.navigateTo('VerificationCodeView');
    } else {
      // Handle the error or show a message to the user
    }
  }
}
