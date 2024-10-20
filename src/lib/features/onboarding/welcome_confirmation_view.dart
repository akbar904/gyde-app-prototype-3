import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/ui/common/app_colors.dart';
import 'package:my_app/ui/common/ui_helpers.dart';

class WelcomeConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeConfirmationViewModel>.reactive(
      viewModelBuilder: () => WelcomeConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Welcome Confirmation'),
          backgroundColor: AppColors.primary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Aboard!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceMedium,
              Text(
                "You've unlocked access to exclusive, personalized chauffeur services with Gyde.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              verticalSpaceMedium,
              Text(
                'Experience comfort, Tailored to your needs',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              verticalSpaceLarge,
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.navigateToTerms,
                  child: Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeConfirmationViewModel extends BaseViewModel {
  void navigateToTerms() {
    // Implement navigation logic to terms and conditions page
  }
}
