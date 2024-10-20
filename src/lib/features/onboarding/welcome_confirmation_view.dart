import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:com.com.walturn.gyde_app/features/onboarding/onboarding_viewmodel.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome Aboard!',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16.0),
              Text(
                'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0),
              Text(
                'Experience comfort, Tailored to your needs',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.navigateToNextPage,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
