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
          title: Text('Stay Connected'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
                onChanged: model.updateEmail,
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: model.onContinuePressed,
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
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

class EmailCollectionViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  String _email = '';

  void updateEmail(String email) {
    _email = email;
  }

  Future<void> onContinuePressed() async {
    if (_email.isNotEmpty) {
      // Logic for what happens when 'Next' is pressed, e.g., validation or API call
      await _navigationService.navigateTo('/welcome-confirmation');
    } else {
      // Handle empty email case, e.g., show error message
    }
  }
}
