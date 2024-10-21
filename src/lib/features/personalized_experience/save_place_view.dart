import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SavePlaceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SavePlaceViewModel>.reactive(
      viewModelBuilder: () => SavePlaceViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Save Place'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'You are currently at New York NY, USA. What would you like to call this place?',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                controller: model.placeNameController,
                decoration: InputDecoration(
                  labelText: 'Name this place (e.g., Home, Office)',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.savePlace,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SavePlaceViewModel extends BaseViewModel {
  final TextEditingController placeNameController = TextEditingController();
  final NavigationService _navigationService = NavigationService();

  void savePlace() {
    final placeName = placeNameController.text;
    if (placeName.isNotEmpty) {
      // Save the place name logic here
      _navigationService.back();
    } else {
      // Handle empty place name
    }
  }
}
