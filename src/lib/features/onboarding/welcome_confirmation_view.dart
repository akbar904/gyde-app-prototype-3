import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class WelcomeConfirmationView extends StatelessWidget {
  const WelcomeConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
      viewModelBuilder: WelcomeConfirmationViewModel.new,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Aboard!',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              Text(
                "You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Experience comfort, Tailored to your needs',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: model.onNext,
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeConfirmationViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void onNext() {
    _navigationService.navigateTo('/terms-conditions');
  }
}
