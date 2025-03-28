# ClimatePulse
**ClimatePulse** est un projet de visualisation de données climatiques qui analyse les tendances météorologiques au Maroc de 2016 à 2025. Ce tableau de bord interactif, construit avec Power BI, offre une analyse approfondie des températures, des précipitations et des vents à travers les régions marocaines.

🌍 **Aperçu du Projet**  
ClimatePulse combine des données climatiques historiques, un traitement avancé des données, et des visualisations interactives pour fournir des insights exploitables sur le climat au Maroc. Ce projet est idéal pour les chercheurs, les décideurs politiques, et les passionnés de données climatiques.

---

## 🚀 Fonctionnalités Principales

### Collecte et Traitement des Données
- Extraction de données climatiques historiques (températures, précipitations, vents) pour les villes marocaines.
- Nettoyage et standardisation des données avec Power BI Power Query.
- Enrichissement des données avec des informations géographiques (latitude, longitude, régions).

### Visualisation Interactive
- Tableaux de bord Power BI avec des pages dédiées pour :
  - **Températures** : Tendances annuelles et mensuelles par région.
  - **Précipitations** : Classement des villes les plus pluvieuses, analyses géographiques.
  - **Vents** : Vitesse moyenne, direction (rose des vents), et distribution.
- Filtres interactifs pour explorer les données par année, mois, et région.

### Analyse Avancée
- Calcul des anomalies climatiques (écarts par rapport à la moyenne).
- Visualisations géographiques avec des cartes interactives.
- Classement des villes par précipitations totales.

---

## 🛠 Technologies
- **Power BI** : Visualisation et analyse des données.
- **DAX** : Mesures et calculs avancés (ex. : anomalies, moyennes).
- **Power Query** : Transformation et nettoyage des données.
- **SQL** (optionnel) : Requêtes pour extraire ou transformer les données (si applicable).

---

## 📂 Structure du Projet
ClimatePulse/
├── data/                   # Données brutes et transformées (si disponibles)
├── powerbi/                # Fichiers Power BI (ClimatePulse.pbix)
├── sql/                    # Requêtes SQL (si applicable)
├── docs/                   # Captures d’écran des tableaux de bord
├── README.md               # Description du projet
└── requirements.txt        # Dépendances (si applicable)
🔍 Fonctionnalités Détaillées
Extraction et Transformation
Nettoyage des données climatiques avec Power Query (suppression des valeurs manquantes, normalisation des formats).
Création de colonnes calculées (ex. : Year, MonthName, Season).
Enrichissement géographique avec les coordonnées des villes marocaines.
Visualisation
Page Températures : Graphiques en courbes pour les tendances annuelles et mensuelles, cartes des températures moyennes par région.
Page Précipitations : Classement des villes les plus pluvieuses, carte des précipitations, histogramme de distribution.
Page Vents : Rose des vents pour la direction, histogramme des vitesses de vent et des rafales.
Analyse
Calcul des anomalies de températures et de précipitations (écarts par rapport à la moyenne historique).
Classement des villes par précipitations totales (ex. : Tanger, Rabat, Casablanca).
Visualisations géographiques pour identifier les régions les plus pluvieuses ou venteuses.
📊 Résultats & Insights
Classement des Villes Pluvieuses : Tanger et Rabat dominent avec des précipitations annuelles dépassant 700 mm.
Tendances Climatiques : Augmentation des températures moyennes dans les régions du sud (ex. : Dakhla-Oued Ed-Dahab).
Vents Dominants : Les régions côtières comme Agadir montrent des vents dominants de l’ouest (Atlantique).
📄 Licence
Projet sous licence MIT.

👥 Auteurs
Jamal Oulachgar - Data Analyst - Profil GitHub
📬 Contact
📧 Email : [oulachgarjamal@gmail.com]
🔗 LinkedIn : [Ton profil LinkedIn]
💡 Dernière mise à jour : Mars 2025