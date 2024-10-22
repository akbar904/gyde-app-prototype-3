import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';

class AuthOptionsView extends StatelessWidget {
  const AuthOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: AuthOptionsViewModel.new,
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue with Phone',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => viewModel.navigateToPhoneInput(),
                child: const Text('Continue with Phone'),
              ),
              const SizedBox(height: 20),
              Text(
                'Continue with Email',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => viewModel.navigateToEmailInput(),
                child: const Text('Continue with Email'),
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
