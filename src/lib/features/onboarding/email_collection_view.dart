import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/features/onboarding/email_collection_view_model.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Stay Connected',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                'To provide you with tailored services and updates, please share your email with us.',
                textAlign: TextAlign.center,
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.isEmailValid ? model.submitEmail : null,
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
