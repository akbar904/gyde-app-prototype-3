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
                'We sent verification code to your phone number +65 8123 4567',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Verification Code',
                ),
                keyboardType: TextInputType.number,
                maxLength: 6,
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    model.verifyCode();
                  },
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
  void verifyCode() {
    // Logic to verify the code and navigate to the next page
  }
}
