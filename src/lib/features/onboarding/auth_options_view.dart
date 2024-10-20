import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'auth_options_viewmodel.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthOptionsViewModel>.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Authentication Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Choose an authentication method to continue.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => model.navigateToPhoneInput(),
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => model.navigateToEmailCollection(),
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
