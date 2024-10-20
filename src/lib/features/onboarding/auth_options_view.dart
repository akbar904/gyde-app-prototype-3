import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:com.com.walturn.gyde_app/app/app.locator.dart';
import 'package:com.com.walturn.gyde_app/app/app.router.dart';

class AuthOptionsView extends StatelessWidget with RouteAware {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Continue with Phone',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  NavigationService navigator = locator<NavigationService>();
                  navigator.navigateTo(Routes.phoneInputView);
                },
                child: Text('Continue with Phone'),
              ),
              SizedBox(height: 16),
              Text(
                'Continue with Email',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  NavigationService navigator = locator<NavigationService>();
                  navigator.navigateTo(Routes.emailCollectionView);
                },
                child: Text('Continue with Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  // Add any necessary business logic and state management here
}
