import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Verification Code'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Code',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'We sent verification code to your phone number +65 8123 4567',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Verification Code',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: model.onCodeChanged,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: model.isCodeValid ? model.onContinue : null,
                  child: Text('Continue'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class VerificationCodeViewModel extends BaseViewModel {
  String _verificationCode = '';

  bool get isCodeValid => _verificationCode.length == 6;

  void onCodeChanged(String value) {
    _verificationCode = value;
    notifyListeners();
  }

  void onContinue() {
    // Implement navigation to the next screen
  }
}
