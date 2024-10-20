import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerificationCodeViewModel extends BaseViewModel {
  final NavigationService _navigationService;

  VerificationCodeViewModel({required NavigationService navigationService})
      : _navigationService = navigationService;

  String verificationMessage =
      'We sent verification code to your phone number +65 8123 4567';

  void onEnterCode(String code) {
    // Implement the logic for handling the verification code input
    // This might include validating the code, sending it to a service, etc.
  }

  Future<void> navigateToNextPage() async {
    // Implement navigation logic to the next page in the onboarding flow
    await _navigationService.navigateTo('/emailCollectionView');
  }
}
