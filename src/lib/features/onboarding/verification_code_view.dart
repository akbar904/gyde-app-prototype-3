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
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter Code',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                  'We sent verification code to your phone number +65 8123 4567'),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Verification Code',
                ),
                keyboardType: TextInputType.number,
                onChanged: model.onCodeChanged,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: model.verifyCode,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodeViewModel extends BaseViewModel {
  String _verificationCode = '';

  void onCodeChanged(String code) {
    _verificationCode = code;
  }

  void verifyCode() {
    // Add your verification logic here
  }
}
