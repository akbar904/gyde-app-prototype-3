import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Aboard!',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              Text(
                'You\'ve unlocked access to exclusive, personalized chauffeur services with Gyde.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16),
              Text(
                'Experience comfort, Tailored to your needs',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.navigateToNext,
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
  void navigateToNext() {
    // Logic for navigation to the next page
  }
}
