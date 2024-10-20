import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerificationCodeViewModel extends BaseViewModel {
  // Logic for handling verification code can be added here
}

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
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle verification logic
                    // Navigate to the next screen
                    NavigationService().navigateTo('emailCollectionView');
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
