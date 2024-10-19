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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter Code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'We sent a verification code to your phone number +65 8123 4567',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: model.onVerificationCodeChanged,
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.isCodeValid ? model.onNextPressed : null,
                  child: Text('Next'),
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
  String _verificationCode = '';

  bool get isCodeValid => _verificationCode.isNotEmpty;

  void onVerificationCodeChanged(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  void onNextPressed() {
    // Logic to verify the code and navigate to the next page
  }
}
