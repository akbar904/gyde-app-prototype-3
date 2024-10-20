import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToNextPage() {
    _navigationService.navigateToNextView();
  }

  void navigateToAuthenticationOptions() {
    _navigationService.navigateTo(Routes.authOptionsView);
  }

  void navigateToPhoneInput() {
    _navigationService.navigateTo(Routes.phoneInputView);
  }

  void navigateToVerification() {
    _navigationService.navigateTo(Routes.verificationView);
  }

  void navigateToEmailCollection() {
    _navigationService.navigateTo(Routes.emailCollectionView);
  }

  void navigateToWelcomeConfirmation() {
    _navigationService.navigateTo(Routes.welcomeConfirmationView);
  }

  void navigateToTermsAndConditions() {
    _navigationService.navigateTo(Routes.termsConditionsView);
  }
}
