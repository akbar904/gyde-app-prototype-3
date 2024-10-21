import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/app/app.router.dart';
import 'package:gyde_app/ui/common/ui_helpers.dart';

class CompanyInformationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CompanyInformationViewModel>.reactive(
      viewModelBuilder: () => CompanyInformationViewModel(),
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
                style: Theme.of(context).textTheme.subtitle1,
              ),
              verticalSpaceMedium,
              TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Your first name',
                ),
                onChanged: model.updateFirstName,
              ),
              verticalSpaceSmall,
              TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Your last name',
                ),
                onChanged: model.updateLastName,
              ),
              verticalSpaceSmall,
              TextField(
                decoration: InputDecoration(
                  labelText: 'Company Name',
                  hintText: 'Your company name',
                ),
                onChanged: model.updateCompanyName,
              ),
              verticalSpaceLarge,
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.navigateToNext,
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

class CompanyInformationViewModel extends BaseViewModel {
  String _firstName = '';
  String _lastName = '';
  String _companyName = '';

  void updateFirstName(String value) {
    _firstName = value;
    notifyListeners();
  }

  void updateLastName(String value) {
    _lastName = value;
    notifyListeners();
  }

  void updateCompanyName(String value) {
    _companyName = value;
    notifyListeners();
  }

  void navigateToNext() {
    // Navigate to the next screen in the profile setup flow
    NavigationService().navigateTo(Routes.packageSelectionView);
  }
}
