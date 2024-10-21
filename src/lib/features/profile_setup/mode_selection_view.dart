import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ModeSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModeSelectionViewModel>.reactive(
      viewModelBuilder: () => ModeSelectionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Select Your Mode'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please let us know which account type suits you best.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              SelectionButton(
                text: 'Business Mode',
                onPressed: () => model.selectMode(true),
                isSelected: model.isBusinessMode,
              ),
              SelectionButton(
                text: 'Personal Mode',
                onPressed: () => model.selectMode(false),
                isSelected: !model.isBusinessMode,
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: model.next,
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

class ModeSelectionViewModel extends BaseViewModel {
  bool _isBusinessMode = false;

  bool get isBusinessMode => _isBusinessMode;

  void selectMode(bool isBusiness) {
    _isBusinessMode = isBusiness;
    notifyListeners();
  }

  void next() {
    // Navigate to the next page based on the selected mode
    if (_isBusinessMode) {
      // Navigate to CompanyInformationView
    } else {
      // Navigate to PersonalInformationView
    }
  }
}

class SelectionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  SelectionButton(
      {required this.text, required this.onPressed, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.blue : Colors.grey,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
