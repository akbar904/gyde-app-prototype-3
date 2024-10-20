import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Verification Code'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Code',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16.0),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 24.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: model.onCodeChanged,
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: model.onContinue,
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodeViewModel extends BaseViewModel {
  void onCodeChanged(String value) {
    // Handle code change
  }

  void onContinue() {
    // Handle continue action
  }
}
