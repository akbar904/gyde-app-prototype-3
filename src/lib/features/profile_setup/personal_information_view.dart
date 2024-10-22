import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PersonalInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PersonalInformationViewModel>.reactive(
      viewModelBuilder: () => PersonalInformationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Your Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Provide your basic details for a personalized experience.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              TextField(
                controller: model.firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Your first name',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: model.lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Your last name',
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.onNext,
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

class PersonalInformationViewModel extends BaseViewModel {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  void onNext() {
    // Logic for handling the next button press, e.g., navigating to the next page.
  }
}
