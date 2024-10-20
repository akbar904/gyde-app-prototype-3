import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gyde'),
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
              "You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16),
            Text(
              'Experience comfort, Tailored to your needs',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next page in the onboarding flow
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
