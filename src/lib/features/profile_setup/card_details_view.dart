import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CardDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CardDetailsViewModel>.reactive(
      viewModelBuilder: () => CardDetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Card Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: model.nameOnCardController,
                decoration: InputDecoration(
                  labelText: 'Name on Card',
                ),
              ),
              TextField(
                controller: model.cardNumberController,
                decoration: InputDecoration(
                  labelText: 'Card Number',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: model.expirationDateController,
                decoration: InputDecoration(
                  labelText: 'Expiration Date',
                ),
                keyboardType: TextInputType.datetime,
              ),
              TextField(
                controller: model.cvcController,
                decoration: InputDecoration(
                  labelText: 'CVC',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: model.countryRegionController,
                decoration: InputDecoration(
                  labelText: 'Country or Region',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: model.onSave,
                    child: Text('Save'),
                  ),
                  OutlinedButton(
                    onPressed: model.onCancel,
                    child: Text('Cancel'),
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

class CardDetailsViewModel extends BaseViewModel {
  final TextEditingController nameOnCardController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expirationDateController =
      TextEditingController();
  final TextEditingController cvcController = TextEditingController();
  final TextEditingController countryRegionController = TextEditingController();

  void onSave() {
    // Implement save functionality
  }

  void onCancel() {
    // Implement cancel functionality
  }
}
