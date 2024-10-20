import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TermsConditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TermsConditionsViewModel>.reactive(
      viewModelBuilder: () => TermsConditionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Terms & Conditions'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'By continuing, you have read and agree to our terms and condition.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'Please read these terms of use carefully before using this platform.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
                style: TextStyle(fontSize: 14),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () => model.navigateToNext(),
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TermsConditionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToNext() {
    _navigationService.navigateTo(Routes.nextPageRoute);
  }
}
