import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:com.com.walturn.gyde_app/app/app.locator.dart';
import 'package:com.com.walturn.gyde_app/app/app.router.dart';

class OnboardingViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToNextPage() {
    _navigationService.navigateTo(Routes.authOptionsView);
  }
}
