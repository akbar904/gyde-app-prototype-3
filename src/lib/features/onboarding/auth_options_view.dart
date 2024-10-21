import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue with Phone',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => viewModel.navigateToPhoneInput(),
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 20),
              Text(
                'Continue with Email',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => viewModel.navigateToEmailInput(),
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void navigateToPhoneInput() {
    _navigationService.navigateTo(Routes.phoneInputView);
  }

  void navigateToEmailInput() {
    _navigationService.navigateTo(Routes.emailCollectionView);
  }
}
