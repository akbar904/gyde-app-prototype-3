import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => VerificationViewModel(),
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
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: model.updateVerificationCode,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: model.verifyCode,
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationViewModel extends BaseViewModel {
  String _verificationCode = '';

  void updateVerificationCode(String code) {
    _verificationCode = code;
    notifyListeners();
  }

  void verifyCode() {
    // Implement verification logic here
  }
}
