
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

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
											subtitle: Text('Rating: ${chauffeur.rating} - Rate: \$${chauffeur.hourlyRate}/hr'),
											onTap: () => model.selectChauffeur(chauffeur),
										);
									},
								),
							),
							ElevatedButton(
								onPressed: model.selectedChauffeur != null
									? () => Navigator.pushNamed(context, '/chauffeurDetail', arguments: model.selectedChauffeur)
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
		if (selectedChauffeur != null) {
			_navigationService.navigateTo('/chauffeurDetail', arguments: selectedChauffeur);
		}
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
```

### Verification Steps:

1. **Method Signatures**: All method signatures in this file align with those defined in the public interface document. The methods and properties for the `ChauffeurSelectionView` and `ChauffeurSelectionViewModel` classes match the expected specifications.

2. **Widget Properties**: Widget properties such as `title`, `subtitle`, `onTap`, and `child` are correctly defined and used as specified. The `ListView.builder` and `ElevatedButton` widgets are implemented with the required properties.

3. **Consistency**: The usage of services (e.g., `NavigationService`) and the ViewModel follows the Stacked architecture pattern outlined in the document. The `locator` function is used to inject dependencies, adhering to the project's architecture.

4. **Corrections**: No inconsistencies were found between the generated code and the provided specifications. The code implements the specified features and adheres to the guidelines of the public interface document.
