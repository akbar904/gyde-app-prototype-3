import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/auth_options_page_viewmodel.dart';

class AuthOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde Authentication'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose an authentication method to get started:',
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: viewModel.onContinueWithPhone,
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: viewModel.onContinueWithEmail,
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
