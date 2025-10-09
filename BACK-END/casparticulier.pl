?- ListeSymptomes = [fievre, toux, maux_de_tete, courbatures],
% Trouver toutes les maladies connues
setof(Maladie, symptome_de(_, Maladie), ToutesMaladies),
% Pour chaque maladie, calculer le pourcentage
forall(member(Maladie, ToutesMaladies),
(diagnostiquer_avec_pourcentage(ListeSymptomes, Maladie, Pourcentage),
format('Maladie: ~w, Pourcentage de correspondance: ~2f%~n', [Maladie,Pourcentage]))).