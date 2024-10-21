import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BookingConfirmationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BookingConfirmationViewModel>.reactive(
      viewModelBuilder: () => BookingConfirmationViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Booking Confirmation'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You\'re all set',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 10),
              Text(
                'Everything is set! Would you like to book your first ride with ${model.chauffeurName}?',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 20),
              BookingSummary(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: model.modifyBooking,
                    child: Text('Modify'),
                  ),
                  ElevatedButton(
                    onPressed: model.confirmBooking,
                    child: Text('Confirm'),
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

class BookingSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Summary',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 10),
          // Add detailed booking summary here
          Text('Amenities: Bottled water, Jazz music'),
          Text('Vehicle: Business Class - 4 seats, 2 bags'),
          Text('Chauffeur: John Doe'),
        ],
      ),
    );
  }
}

class BookingConfirmationViewModel extends BaseViewModel {
  String chauffeurName =
      'John Doe'; // Example name, in real case it should be dynamic

  void confirmBooking() {
    // Logic to confirm booking
    print('Booking confirmed');
  }

  void modifyBooking() {
    // Logic to modify booking
    print('Modify booking');
  }
}
