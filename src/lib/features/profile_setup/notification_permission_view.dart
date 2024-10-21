import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotificationPermissionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationPermissionViewModel>.reactive(
      viewModelBuilder: () => NotificationPermissionViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Notification Permission'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Get Notified',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 8.0),
              Text(
                'Ensure a seamless travel experience by allowing notifications.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: model.turnOnNotifications,
                child: Text('Turn On Notifications'),
              ),
              TextButton(
                onPressed: model.notRightNow,
                child: Text('Not Right Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationPermissionViewModel extends BaseViewModel {
  void turnOnNotifications() {
    // Logic to enable notifications
  }

  void notRightNow() {
    // Logic if the user chooses not to enable notifications
  }
}
