import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void navigateToNextPage() {
    // Logic to determine the next page in the onboarding flow
    // For example, based on the current page or user input

    // Example navigation logic
    _navigationService.navigateTo(
        'nextPageRoute'); // Replace 'nextPageRoute' with actual route names
  }

  // Additional methods and logic for managing state and navigation
  // can be implemented here as needed to support the onboarding flow
}
