import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PaymentMethodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentMethodViewModel>.reactive(
      viewModelBuilder: () => PaymentMethodViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Payment Method'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add your preferred payment method securely.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 20),
              ListTile(
                title: const Text('Credit or Debit Card'),
                leading: Radio<PaymentOption>(
                  value: PaymentOption.creditCard,
                  groupValue: model.selectedOption,
                  onChanged: (PaymentOption? value) {
                    model.setSelectedOption(value);
                  },
                ),
              ),
              ListTile(
                title: const Text('Apple Pay'),
                leading: Radio<PaymentOption>(
                  value: PaymentOption.applePay,
                  groupValue: model.selectedOption,
                  onChanged: (PaymentOption? value) {
                    model.setSelectedOption(value);
                  },
                ),
              ),
              if (model.isBusinessMode)
                ListTile(
                  title: const Text('Connect to Bank'),
                  leading: Radio<PaymentOption>(
                    value: PaymentOption.connectBank,
                    groupValue: model.selectedOption,
                    onChanged: (PaymentOption? value) {
                      model.setSelectedOption(value);
                    },
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: model.addPaymentMethod,
                child: Text('Add Payment Method'),
              ),
              TextButton(
                onPressed: model.skipForNow,
                child: Text('Skip for Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum PaymentOption { creditCard, applePay, connectBank }

class PaymentMethodViewModel extends BaseViewModel {
  PaymentOption? _selectedOption;
  bool _isBusinessMode;

  PaymentMethodViewModel() : _isBusinessMode = false;

  PaymentOption? get selectedOption => _selectedOption;
  bool get isBusinessMode => _isBusinessMode;

  void setSelectedOption(PaymentOption? option) {
    _selectedOption = option;
    notifyListeners();
  }

  void addPaymentMethod() {
    // Logic to add payment method
  }

  void skipForNow() {
    // Logic to skip the payment method step
  }
}
