import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationCodeViewModel>.reactive(
      viewModelBuilder: () => VerificationCodeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Verification Code'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Enter Code',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'We sent verification code to your phone number +65 8123 4567',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Verification Code',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  onChanged: viewModel.onCodeChanged,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: viewModel.isCodeValid ? viewModel.onSubmit : null,
                  child: Text('Next'),
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
  String _code = '';

  bool get isCodeValid => _code.length == 6;

  void onCodeChanged(String code) {
    _code = code;
    notifyListeners();
  }

  void onSubmit() {
    // Handle the submission of the verification code.
  }
}
