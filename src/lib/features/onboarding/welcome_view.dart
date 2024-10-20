import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:com.com.walturn.gyde_app/app/app.locator.dart';
import 'package:com.com.walturn.gyde_app/app/app.router.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => WelcomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => model.navigateToAuthenticationOptions(),
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToAuthenticationOptions() {
    _navigationService.navigateTo(Routes.authenticationOptionsView);
  }
}
