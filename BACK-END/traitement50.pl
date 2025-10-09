obtenir_traitements_pour_symptomes(ListeSymptomesPatient) :-
% 1. Trouver toutes les maladies et leurs pourcentages
findall(Maladie, symptome_de(_, Maladie), ToutesMaladies),
% 2. Pour chaque maladie, calculer le pourcentage et collecter celles au-dessus du seuil
% Utilisez findall pour collecter les paires (Maladie, Pourcentage)
findall(Maladie-Pourcentage,
(member(Maladie, ToutesMaladies),
diagnostiquer_avec_pourcentage(ListeSymptomesPatient, Maladie, Pourcentage),
Pourcentage >= 50), % Seuil de 50%
MaladiesDiagnostiqueesAvecPourcentage),
% 3. Si des maladies ont été trouvées, afficher les traitements
 writeln('--- Maladies potentielles et leurs traitements ---'),
forall(member(Maladie-Pourcentage, MaladiesDiagnostiqueesAvecPourcentage),
(traitement_pour(Maladie, Traitement),
format('Maladie: ~w (~2f%)~nTraitement: ~w~n~n', [Maladie, Pourcentage,
Traitement]))).