import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_app/features/onboarding/verification_code_viewmodel.dart';

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
            children: [
              Text(
                'Enter Code',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              Text(
                'We sent verification code to your phone number +65 8123 4567',
                style: Theme.of(context).textTheme.bodyText2,
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
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: model.isCodeValid ? model.onSubmit : null,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
