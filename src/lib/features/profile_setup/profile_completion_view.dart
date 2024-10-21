import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileCompletionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileCompletionViewModel>.reactive(
      viewModelBuilder: () => ProfileCompletionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Profile Completion'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hi, ${model.firstName}!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to Gyde. Please select your personalized experience.',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.onContinue,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCompletionViewModel extends BaseViewModel {
  String _firstName = 'John';

  String get firstName => _firstName;

  void onContinue() {
    // Handle continue action
  }
}
