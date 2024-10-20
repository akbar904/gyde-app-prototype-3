import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmailCollectionViewModel>.reactive(
      viewModelBuilder: () => EmailCollectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Stay Connected'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                  height: 20), // Using Flutter's built-in SizedBox for spacing
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.updateEmail,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.navigateToNextPage,
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void navigateToNextPage() {
    // Logic to navigate to the next page in the onboarding flow
  }
}
