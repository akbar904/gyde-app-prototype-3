import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Auth Options'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose an authentication method',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              AuthButton(
                text: 'Continue with Phone',
                onPressed: model.navigateToPhoneInput,
              ),
              SizedBox(height: 10),
              AuthButton(
                text: 'Continue with Email',
                onPressed: model.navigateToEmailCollection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  void navigateToPhoneInput() {
    // Logic to navigate to phone input page
  }

  void navigateToEmailCollection() {
    // Logic to navigate to email collection page
  }
}
