import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AmenitiesSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AmenitiesSelectionViewModel>.reactive(
      viewModelBuilder: () => AmenitiesSelectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Select your preferred amenities'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tailor your journey with our range of luxury add-ons. From in-car Wi-Fi to gourmet refreshments, choose what matters most to you.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    AmenitiesCategory(
                      title: 'Beverages',
                      options: [
                        'Bottled Water',
                        'Sparkling Water',
                        'Juices',
                        'Wine'
                      ],
                    ),
                    AmenitiesCategory(
                      title: 'Snacks',
                      options: ['Nuts', 'Chocolates', 'Fruit'],
                    ),
                    AmenitiesCategory(
                      title: 'Music Preferences',
                      options: ['Jazz', 'Classical', 'Pop', 'Custom Playlist'],
                    ),
                    AmenitiesCategory(
                      title: 'Reading Material',
                      options: ['Magazines', 'Newspapers'],
                    ),
                    AmenitiesCategory(
                      title: 'Interior Features',
                      options: ['Leather Seats', 'Temperature Control'],
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle continue action
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AmenitiesSelectionViewModel extends BaseViewModel {
  // Add ViewModel logic for amenities selection here
}

class AmenitiesCategory extends StatelessWidget {
  final String title;
  final List<String> options;

  AmenitiesCategory({required this.title, required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        ...options
            .map((option) => CheckboxListTile(
                  title: Text(option),
                  value: false,
                  onChanged: (bool? value) {
                    // Handle checkbox change
                  },
                ))
            .toList(),
        SizedBox(height: 20),
      ],
    );
  }
}
