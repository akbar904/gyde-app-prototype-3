import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthOptionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AuthOptionsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Gyde'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose an option to continue',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: model.continueWithPhone,
              child: Text('Continue with Phone'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: model.continueWithEmail,
              child: Text('Continue with Email'),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthOptionsViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void continueWithPhone() {
    _navigationService.navigateTo(Routes.phoneInputView);
  }

  void continueWithEmail() {
    _navigationService.navigateTo(Routes.emailCollectionView);
  }
}
