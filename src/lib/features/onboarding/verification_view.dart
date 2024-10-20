import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/verification_viewmodel.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationViewModel>.reactive(
      viewModelBuilder: () => VerificationViewModel(),
      builder: (context, model, child) {
        return Scaffold(
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
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 8),
                Text(
                  'We sent a verification code to your phone number +65 8123 4567',
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
                  onPressed: model.onContinue,
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
