import 'package:flutter/material.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/app/app.router.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    await setupLocator();

    runApp(const MyApp());
  }, (exception, stackTrace) async {
    // Handle exceptions here
    print('Caught error: $exception');
    print('Stack trace: $stackTrace');
    // You might want to log this to a service or show a user-friendly error message
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gyde',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.welcomeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
