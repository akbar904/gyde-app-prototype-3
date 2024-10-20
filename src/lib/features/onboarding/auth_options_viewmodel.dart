import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToPhoneInput() {
    _navigationService.navigateTo('/phone-input');
  }

  void navigateToEmailCollection() {
    _navigationService.navigateTo('/email-collection');
  }
}
