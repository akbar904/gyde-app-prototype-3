import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: viewModel.continueWithPhone,
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: viewModel.continueWithEmail,
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  void continueWithPhone() {
    // Logic to navigate to PhoneInputView
  }

  void continueWithEmail() {
    // Logic to navigate to EmailCollectionView
  }
}
