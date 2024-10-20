import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'onboarding_viewmodel.dart';

class EmailCollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Stay Connected'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.updateEmail,
              ),
              SizedBox(height: 16),
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
