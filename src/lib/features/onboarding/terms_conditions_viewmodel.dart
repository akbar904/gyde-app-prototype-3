import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_app/app/app.locator.dart';

class TermsConditionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToNextPage() {
    _navigationService.navigateTo('/nextPageRoute');
  }

  void agreeToTerms() {
    // Logic for agreeing to terms could be added here, e.g., saving to a local database or sending a confirmation to a server
    navigateToNextPage();
  }
}
