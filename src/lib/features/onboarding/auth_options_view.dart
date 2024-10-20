import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends ViewModelBuilderWidget<AuthOptionsViewModel> {
  @override
  Widget builder(
      BuildContext context, AuthOptionsViewModel viewModel, Widget? child) {
    return Scaffold(
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
              'Choose Authentication Method',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: viewModel.navigateToPhoneInput,
              child: Text('Continue with Phone'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: viewModel.navigateToEmailCollection,
              child: Text('Continue with Email'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AuthOptionsViewModel viewModelBuilder(BuildContext context) =>
      AuthOptionsViewModel();
}

class AuthOptionsViewModel extends BaseViewModel {
  void navigateToPhoneInput() {
    // Logic to navigate to phone input view
  }

  void navigateToEmailCollection() {
    // Logic to navigate to email collection view
  }
}
