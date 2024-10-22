import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
            actions: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: model.editProfile,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeader(),
                  SectionHeader(title: 'My Subscriptions'),
                  MySubscriptionsSection(),
                  SectionHeader(title: 'Promos'),
                  PromosSection(),
                  SectionHeader(title: 'Payment Method'),
                  PaymentMethodSection(),
                  SectionHeader(title: 'Change Language'),
                  ChangeLanguageSection(),
                  SectionHeader(title: 'Saved Addresses'),
                  SavedAddressesSection(),
                  SectionHeader(title: 'Notifications'),
                  NotificationsSection(),
                  SectionHeader(title: 'Analytics'),
                  AnalyticsSection(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_car),
                label: 'Rides',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Chauffeur',
              ),
            ],
            onTap: model.onBottomNavTap,
            currentIndex: model.currentIndex,
          ),
        );
      },
    );
  }
}

class ProfileViewModel extends BaseViewModel {
  int currentIndex = 0;

  void onBottomNavTap(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void editProfile() {
    // Implement edit profile functionality
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('John Doe', style: Theme.of(context).textTheme.headline6),
        Text('+65 8123 4567', style: Theme.of(context).textTheme.subtitle1),
        Text('j.doe@gmail.com', style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MySubscriptionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Corporate Elite Package - Monthly Fee \$5000');
  }
}

class PromosSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('No active promotions');
  }
}

class PaymentMethodSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Visa **** **** **** 1234');
  }
}

class ChangeLanguageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('English');
  }
}

class SavedAddressesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('No saved addresses');
  }
}

class NotificationsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Notifications Enabled');
  }
}

class AnalyticsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Total Spent: \$6400'),
        Text('Monthly Statistics: 94 Rides, 10 Rides daily average'),
        Text('Growth Chart: 32% this month'),
      ],
    );
  }
}
