import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
  const EmailCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmailCollectionViewModel>.reactive(
      viewModelBuilder: EmailCollectionViewModel.new,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Stay Connected'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'To provide you with tailored services and updates, please share your email with us.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                onChanged: model.updateEmail,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: model.onContinuePressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailCollectionViewModel extends BaseViewModel {
  String _email = '';

  void updateEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void onContinuePressed() {
    // Handle the continue action, such as navigating to the next screen
  }
}
