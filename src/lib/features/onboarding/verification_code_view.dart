import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Verification'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Code',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: model.onCodeChanged,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: model.isValid ? model.onNextPressed : null,
                child: Text('Next'),
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
  bool get isValid => _verificationCode.isNotEmpty;

  void onCodeChanged(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  void onNextPressed() {
    // Add logic to handle verification and navigate to the next view
  }
}
