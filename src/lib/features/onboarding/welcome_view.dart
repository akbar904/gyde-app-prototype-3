import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/welcome_viewmodel.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
      viewModelBuilder: () => WelcomeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Experience luxury travel with ease.',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              Text(
                'Register and manage your bookings seamlessly.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: model.navigateToAuthOptions,
                  child: Text('Get Started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
