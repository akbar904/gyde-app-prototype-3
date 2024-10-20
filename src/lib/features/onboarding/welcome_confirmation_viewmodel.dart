import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeConfirmationViewModel extends BaseViewModel {
  final NavigationService _navigationService;

  WelcomeConfirmationViewModel({required NavigationService navigationService})
      : _navigationService = navigationService;

  Future<void> onContinue() async {
    // Navigate to the Terms and Conditions Page
    await _navigationService.navigateTo('/terms-conditions');
  }
}
