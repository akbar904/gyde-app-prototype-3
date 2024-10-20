import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose your authentication method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              AuthOptionButton(
                text: 'Continue with Phone',
                onPressed: model.navigateToPhoneInput,
              ),
              const SizedBox(height: 20),
              AuthOptionButton(
                text: 'Continue with Email',
                onPressed: model.navigateToEmailCollection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthOptionButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        textStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToPhoneInput() {
    _navigationService.navigateTo(Routes.phoneInputView);
  }

  void navigateToEmailCollection() {
    _navigationService.navigateTo(Routes.emailCollectionView);
  }
}
