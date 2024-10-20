import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome Aboard!',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Experience comfort, Tailored to your needs',
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: model.onContinue,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeConfirmationViewModel extends BaseViewModel {
  void onContinue() {
    // Navigate to the next page in the onboarding flow
  }
}
