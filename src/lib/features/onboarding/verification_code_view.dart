import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/onboarding_viewmodel.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Verification Code'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter Code',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 20),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Verification Code',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
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
