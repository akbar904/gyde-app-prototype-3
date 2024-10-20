import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
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
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: model.setEmail,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.submitEmail,
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

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void submitEmail() {
    // Add logic to handle email submission
    print('Email submitted: $_email');
    // Navigate to the next page in the onboarding flow
  }
}
