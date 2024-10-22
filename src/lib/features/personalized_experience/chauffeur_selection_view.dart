import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class ChauffeurSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChauffeurSelectionViewModel>.reactive(
      viewModelBuilder: () => ChauffeurSelectionViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pick your personal chauffeur'),
          ),
          body: Column(
            children: [
              Text(
                'Select a professional driver who matches your style and needs.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: model.chauffeurs.length,
                  itemBuilder: (context, index) {
                    final chauffeur = model.chauffeurs[index];
                    return ListTile(
                      title: Text(chauffeur.name),
                      subtitle: Text(
                          'Rating: ${chauffeur.rating} - Rate: \$${chauffeur.hourlyRate}/hr'),
                      onTap: () => model.selectChauffeur(chauffeur),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: model.selectedChauffeur != null
                    ? () async {
                        final NavigationService _navigationService =
                            NavigationService();

                        await _navigationService
                            .navigateTo(Routes.bookingConfirmationView);
                      }
                    : null,
                child: Text('Continue'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ChauffeurSelectionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List<Chauffeur> chauffeurs = [
    Chauffeur(name: 'John Doe', rating: 4.5, hourlyRate: 30),
    Chauffeur(name: 'Jane Smith', rating: 4.8, hourlyRate: 35),
    // Add more chauffeurs as needed
  ];

  Chauffeur? selectedChauffeur;

  void selectChauffeur(Chauffeur chauffeur) {
    selectedChauffeur = chauffeur;
    notifyListeners();
  }

  void navigateToChauffeurDetail() {
    final NavigationService _navigationService = locator<NavigationService>();
    _navigationService.navigateTo(Routes.bookingConfirmationView);
  }
}

class Chauffeur {
  final String name;
  final double rating;
  final double hourlyRate;

  Chauffeur({
    required this.name,
    required this.rating,
    required this.hourlyRate,
  });
}
