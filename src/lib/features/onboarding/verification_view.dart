import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationViewModel>.reactive(
      viewModelBuilder: () => VerificationViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Verification'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
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
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Verification Code',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: model.onContinue,
                  child: Text('Continue'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class VerificationViewModel extends BaseViewModel {
  void onContinue() {
    // Logic to verify the code and navigate to the next screen
  }
}
