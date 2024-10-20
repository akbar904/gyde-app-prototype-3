import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmailCollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmailCollectionViewModel>.reactive(
      viewModelBuilder: () => EmailCollectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stay Connected',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.onEmailChanged,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.onContinuePressed,
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailCollectionViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  String _email = '';

  void onEmailChanged(String email) {
    _email = email;
  }

  void onContinuePressed() {
    // Logic for handling email submission
    // For example, validate the email and navigate to the next page
    if (_email.isNotEmpty) {
      _navigationService.navigateTo('/welcome-confirmation');
    }
  }
}
