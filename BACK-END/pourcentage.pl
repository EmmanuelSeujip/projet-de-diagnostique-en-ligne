% Predicat pour trouver tous les symptomes d'une maladie donnee.
% findall(Symptome, symptome_de(Symptome, Maladie), ListeSymptomesMaladie).
% Predicat pour calculer le score de correspondance
% et le pourcentage pour une maladie.
diagnostiquer_avec_pourcentage(SymptomesPatient, Maladie, Pourcentage) :-
% 1. Recuperer tous les symptomes connus pour cette Maladie
findall(SymptomeConnue, symptome_de(SymptomeConnue, Maladie),
SymptomesConnusMaladie),
% 2. Compter le nombre total de symptomes connus pour cette maladie
length(SymptomesConnusMaladie, TotalSymptomesMaladie),
TotalSymptomesMaladie > 0, % Eviter la division par zero
% 3. Trouver les symptomes du patient qui correspondent a cette maladie
intersection(SymptomesPatient, SymptomesConnusMaladie,
SymptomesCorrespondants),
% 4. Compter le nombre de symptomes correspondants
length(SymptomesCorrespondants, NombreCorrespondances),
% 5. Calculer le pourcentage de correspondance
PourcentageFloat is (NombreCorrespondances / TotalSymptomesMaladie) * 100,
% Arrondir le pourcentage pour une meilleure lisibilite
Pourcentage is floor(PourcentageFloat * 100) / 100. % Pour garder deux decimales