import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Auth Options'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: viewModel.onPhoneAuthSelected,
                  child: Text('Continue with Phone'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: viewModel.onEmailAuthSelected,
                  child: Text('Continue with Email'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  void onPhoneAuthSelected() {
    // Handle phone authentication selection
  }

  void onEmailAuthSelected() {
    // Handle email authentication selection
  }
}
