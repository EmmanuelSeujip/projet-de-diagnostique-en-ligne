% Une maladie est diagnostiquee si au moins X symptomes sont presents.
% C'est une approche simplifiee, un systeme plus complexe utiliserait des poids ou des reseaux bayesiens.
% Diagnostic pour la grippe
a_la_maladie(Personne, grippe) :-
a_symptome(Personne, fievre),
a_symptome(Personne, toux),
a_symptome(Personne, courbatures).
% Diagnostic pour le rhume
a_la_maladie(Personne, rhume) :-
a_symptome(Personne, toux),
a_symptome(Personne, nez_qui_coule).
% Diagnostic pour la migraine
a_la_maladie(Personne, migraine) :-
a_symptome(Personne, maux_de_tete),
a_symptome(Personne, sensibilite_lumiere).
% Diagnostic pour l'angine
a_la_maladie(Personne, angine) :-
a_symptome(Personne, douleur_gorge),
a_symptome(Personne, fievre).
% Diagnostic pour l'anemie
a_la_maladie(Personne, anemie) :-
a_symptome(Personne, fatigue),
a_symptome(Personne, paleur).
% Diagnostic pour la rougeole
a_la_maladie(Personne, rougeole) :-
a_symptome(Personne, eruptions_cutanees),
a_symptome(Personne, fievre).
% Diagnostic pour l'arthrite
a_la_maladie(Personne, arthrite) :-
a_symptome(Personne, douleur_articulaire),
a_symptome(Personne, gonflement_articulaire).
% Diagnostic pour le reflux_gastrique
a_la_maladie(Personne, reflux_gastrique) :-
a_symptome(Personne, brulures_estomac),
a_symptome(Personne, regurgitations_acides).
% Diagnostic pour l'infarctus (requiert une alerte d'urgence)
a_la_maladie(Personne, infarctus) :-
a_symptome(Personne, douleur_poitrine),
a_symptome(Personne, essoufflement),
a_symptome(Personne, douleur_bras_gauche).
% Diagnostic pour le diabete_type2
a_la_maladie(Personne, diabete_type2) :-
a_symptome(Personne, urines_frequentes),
a_symptome(Personne, soif_excessive).
% Diagnostic pour la sinusite
a_la_maladie(Personne, sinusite) :-
a_symptome(Personne, congestion_nasale),
a_symptome(Personne, douleur_faciale).
%Predicat pour interroger les symptomes d'une personne
a_symptome(paul, fievre).
a_symptome(paul, toux).
a_symptome(paul, courbatures).
a_symptome(marie, maux_de_tete).
a_symptome(marie, sensibilite_lumiere).
a_symptome(pierre, fatigue).
a_symptome(pierre, paleur).