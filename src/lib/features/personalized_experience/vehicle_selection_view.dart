import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class VehicleSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VehicleSelectionViewModel>.reactive(
      viewModelBuilder: () => VehicleSelectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Choose your vehicle'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set your car criteria and choose the class that suits you best.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: model.vehicleOptions.length,
                  itemBuilder: (context, index) {
                    final vehicle = model.vehicleOptions[index];
                    return ListTile(
                      title: Text(vehicle.name),
                      subtitle: Text(
                        'Seats: ${vehicle.seats}, Bags: ${vehicle.bags}',
                      ),
                      trailing: Radio(
                        value: vehicle,
                        groupValue: model.selectedVehicle,
                        onChanged: (value) => model.selectVehicle(value),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: model.resetSelection,
                    child: Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: model.continueToNextPage,
                    child: Text('Continue'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VehicleSelectionViewModel extends BaseViewModel {
  List<Vehicle> vehicleOptions = [
    Vehicle(name: 'First Class', seats: 4, bags: 3),
    Vehicle(name: 'Business Class', seats: 3, bags: 2),
    Vehicle(name: 'Electric Class', seats: 4, bags: 3),
    Vehicle(name: 'Business Van/SUV', seats: 6, bags: 6),
    Vehicle(name: 'Luxury Van', seats: 8, bags: 8),
    Vehicle(name: 'Executive SUV', seats: 7, bags: 5),
  ];

  Vehicle? selectedVehicle;

  void selectVehicle(Vehicle? vehicle) {
    selectedVehicle = vehicle;
    notifyListeners();
  }

  void resetSelection() {
    selectedVehicle = null;
    notifyListeners();
  }

  void continueToNextPage() {
    final NavigationService _navigationService = locator<NavigationService>();
    _navigationService.navigateTo(Routes.chauffeurSelectionView);
  }
}

class Vehicle {
  final String name;
  final int seats;
  final int bags;

  Vehicle({required this.name, required this.seats, required this.bags});
}
