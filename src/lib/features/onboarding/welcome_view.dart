import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeViewModel>.reactive(
      viewModelBuilder: () => WelcomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: model.navigateToAuthOptions,
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> navigateToAuthOptions() async {
    await _navigationService.navigateTo('/auth-options');
  }
}
