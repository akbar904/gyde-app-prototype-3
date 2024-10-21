import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FrequentlyVisitedPlacesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FrequentlyVisitedPlacesViewModel>.reactive(
      viewModelBuilder: () => FrequentlyVisitedPlacesViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Frequently visited places'),
        ),
        body: Column(
          children: [
            Expanded(
              child: MapView(), // Assuming a MapView widget exists
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Quickly access your favorite destinations, helping you adjust your schedule with ease.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: model.addNewPlace,
                    child: Text('Add New Place'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FrequentlyVisitedPlacesViewModel extends BaseViewModel {
  final NavigationService _navigationService = NavigationService();

  void addNewPlace() {
    _navigationService.navigateTo(Routes.savePlaceView);
  }
}
