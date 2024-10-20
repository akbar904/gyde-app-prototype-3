import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => EmailCollectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title:
              Text('Email Collection', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stay Connected',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: model.onEmailChanged,
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: model.canProceed ? model.onNextPressed : null,
                  child: Text('Next'),
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
  String _email = '';
  bool get canProceed => _email.isNotEmpty && _email.contains('@');

  void onEmailChanged(String email) {
    _email = email;
    notifyListeners();
  }

  void onNextPressed() {
    // Implement navigation to the next page
  }
}
