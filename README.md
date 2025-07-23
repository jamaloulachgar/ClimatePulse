<div align="center">
  <h1>🌦️ ClimatePulse</h1>
  <p><strong>ClimatePulse</strong> est un projet de visualisation de données climatiques qui analyse les tendances météorologiques au Maroc de 2016 à 2025. Ce tableau de bord interactif, construit avec Power BI, offre une analyse approfondie des températures, des précipitations et des vents à travers les régions marocaines.</p>
  <img src="docs/Dash Température.JPG" alt="Tableau de Bord Températures" width="600"/>
</div>

---

## 🌍 Aperçu du Projet
**ClimatePulse** combine des données climatiques historiques, un traitement avancé des données, et des visualisations interactives pour fournir des insights exploitables sur le climat au Maroc. Ce projet est idéal pour les chercheurs, les décideurs politiques, et les passionnés de données climatiques.

---

## 🚀 Fonctionnalités Principales

### 📥 Collecte et Traitement des Données
- Extraction de données climatiques historiques (températures, précipitations, vents) pour les villes marocaines.
- Nettoyage et standardisation des données avec **Power BI Power Query**.
- Enrichissement des données avec des informations géographiques (latitude, longitude, régions).

### 📊 Visualisation Interactive
- Tableaux de bord Power BI avec des pages dédiées :
  - **Températures** : Tendances annuelles et mensuelles par région.
  - **Précipitations** : Classement des villes les plus pluvieuses, analyses géographiques.
  - **Vents** : Vitesse moyenne, direction (rose des vents), et distribution.
- Filtres interactifs pour explorer les données par année, mois, et région.

### 🔍 Analyse Avancée
- Calcul des anomalies climatiques (écarts par rapport à la moyenne).
- Visualisations géographiques avec des cartes interactives.
- Classement des villes par précipitations totales.

---

## 🛠️ Technologies Utilisées
- **Collecte** : Python (Meteostat, Pandas), Web Scraping (Jupyter)
- **Nettoyage/ETL** : Power Query, Snowflake (stockage structuré)
- **Analyse/Visualisation** : Power BI, DAX (calculs avancés)
- **Gestion des données** : SQL (optimisation des requêtes)

---

## 📂 Structure du Projet
![image](https://github.com/user-attachments/assets/f560ecab-33b7-4cad-a692-7d657350fd7e)

---

## 🔍 Fonctionnalités Détaillées

### Extraction et Transformation
- Nettoyage des données climatiques avec Power Query (suppression des valeurs manquantes, normalisation des formats).
- Création de colonnes calculées (ex. : `Year`, `MonthName`, `Season`).
- Enrichissement géographique avec les coordonnées des villes marocaines.

### Visualisation
- **Page Températures** : Graphiques en courbes pour les tendances annuelles et mensuelles, cartes des températures moyennes par région.
- **Page Précipitations** : Classement des villes les plus pluvieuses, carte des précipitations, histogramme de distribution.
- **Page Vents** : Rose des vents pour la direction, histogramme des vitesses de vent et des rafales.

### Analyse
- Calcul des anomalies de températures et de précipitations (écarts par rapport à la moyenne historique).
- Classement des villes par précipitations totales (ex. : Tanger, Rabat, Casablanca).
- Visualisations géographiques pour identifier les régions les plus pluvieuses ou venteuses.

---

## 📊 Résultats & Insights
- **Classement des Villes Pluvieuses** : Tanger et Rabat dominent avec des précipitations annuelles dépassant 700 mm.
- **Tendances Climatiques** : Augmentation des températures moyennes dans les régions du sud (ex. : Dakhla-Oued Ed-Dahab).
- **Vents Dominants** : Les régions côtières comme Agadir montrent des vents dominants de l’ouest (Atlantique).

### 📸 Captures d’Écran des Tableaux de Bord

Voici un aperçu des tableaux de bord interactifs de **ClimatePulse**, chacun dédié à une analyse spécifique des données climatiques au Maroc.

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="docs/Accueil.JPG" alt="Tableau de Bord Accueil" width="500" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);"/>
        <p><strong>Accueil</strong></p>
        <p>Page d'accueil offrant une vue d'ensemble des données climatiques avec des indicateurs clés.</p>
      </td>
      <td align="center">
        <img src="docs/Dash Température.JPG" alt="Tableau de Bord Températures" width="500" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);"/>
        <p><strong>Températures</strong></p>
        <p>Analyse des tendances annuelles et mensuelles des températures par région, avec des cartes et des graphiques en courbes.</p>
      </td>
    </tr>
    <tr>
      <td align="center">
        <img src="docs/dashb précipitation.JPG" alt="Tableau de Bord Précipitations" width="500" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);"/>
        <p><strong>Précipitations</strong></p>
        <p>Classement des villes les plus pluvieuses, carte des précipitations, et histogramme de distribution.</p>
      </td>
      <td align="center">
        <img src="docs/dashb vent.JPG" alt="Tableau de Bord Vents" width="500" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);"/>
        <p><strong>Vents</strong></p>
        <p>Visualisation de la vitesse moyenne, de la direction (rose des vents), et de la distribution des vents.</p>
      </td>
    </tr>
  </table>
</div>

---

## 📄 Licence
Projet sous licence [MIT](LICENSE).

---

## 👥 Auteurs
- **Jamal Oulachgar** - Data Analyst - [Profil GitHub](https://github.com/jamaloulachgar)

---

## 📬 Contact
- 📧 **Email** : [oulachgarjamal@gmail.com](mailto:oulachgarjamal@gmail.com)
- 🔗 **LinkedIn** : [Jamal Oulachgar](https://www.linkedin.com/in/jamal-oulachgar) *(Ajoute ton lien LinkedIn ici)*

---

## 💡 Dernière Mise à Jour
Mars 2025

---

<div align="center">
  <p>⭐ Si ce projet vous a plu, n’hésitez pas à laisser une étoile sur GitHub ! ⭐</p>
</div>
