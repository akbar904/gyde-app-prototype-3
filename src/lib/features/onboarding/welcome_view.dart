import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Experience luxury travel with ease.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Register and manage your bookings seamlessly.',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () => model.navigateToAuthOptions(),
                  child: Text('Get Started'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeViewModel extends BaseViewModel {
  void navigateToAuthOptions() {
    // Logic to navigate to the Authentication Options View
  }
}
