import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PackageSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PackageSelectionViewModel>.reactive(
      viewModelBuilder: () => PackageSelectionViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Select Package'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (model.isBusinessMode)
                  ..._buildBusinessPackageOptions(model)
                else
                  ..._buildPersonalPackageOptions(model),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => model.skipForNow(),
                      child: Text('Skip for Now'),
                    ),
                    ElevatedButton(
                      onPressed: () => model.joinPackage(),
                      child: Text('Join This Package'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildBusinessPackageOptions(PackageSelectionViewModel model) {
    return [
      Text(
        'Corporate Elite Package',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Text('Monthly Fee: \$5000'),
      Text('Unlimited Rides and Priority Booking'),
      Text('Access to Luxury Vehicles'),
      Text('24/7 Customer Support and Concierge Service'),
      Text('Complimentary In-car Amenities'),
    ];
  }

  List<Widget> _buildPersonalPackageOptions(PackageSelectionViewModel model) {
    return [
      _buildPackageOption(
        title: 'Executive Package',
        monthlyFee: 1000,
        features: ['Key Feature 1', 'Key Feature 2'],
        model: model,
      ),
      _buildPackageOption(
        title: 'VIP Package',
        monthlyFee: 2500,
        features: ['Key Feature 1', 'Key Feature 2'],
        model: model,
      ),
    ];
  }

  Widget _buildPackageOption({
    required String title,
    required int monthlyFee,
    required List<String> features,
    required PackageSelectionViewModel model,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Monthly Fee: \$$monthlyFee'),
          ...features.map((feature) => Text(feature)).toList(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class PackageSelectionViewModel extends BaseViewModel {
  bool isBusinessMode = false;

  void joinPackage() {
    // Implement join package logic
  }

  void skipForNow() {
    // Implement skip logic
  }
}
