import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gyde_app/app/app.bottomsheets.dart';
import 'package:gyde_app/app/app.dialogs.dart';
import 'package:gyde_app/app/app.locator.dart';
import 'package:gyde_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'features/app/app_viewmodel.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    await setupLocator();
    setupDialogUi();
    setupBottomSheetUi();

    runApp(const AppView());
  }, (exception, stackTrace) async {
    // Handle exceptions here
    print('Caught error: $exception');
    print('Stack trace: $stackTrace');
    // You might want to log this to a service or show a user-friendly error message
  });
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: AppViewModel.new,
      builder: (_, __, ___) {
        return const _App();
      },
    );
  }
}

class _App extends ViewModelWidget<AppViewModel> {
  const _App();

  @override
  Widget build(BuildContext context, AppViewModel viewModel) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      minScaleFactor: 0.5,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          /// Unfocus and hide keyboard when tap on white spaces
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          initialRoute: Routes.welcomeView,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        ),
      ),
    );
  }
}
