<div align="center">
  <h1>🌦️ ClimatePulse</h1>
  <p><strong>ClimatePulse</strong> est une solution intelligente de visualisation et d’analyse des données climatiques du Maroc de 2016 à 2025. Ce projet combine tableaux de bord interactifs, intelligence artificielle et architecture cloud moderne pour générer des insights exploitables.</p>
  <img src="docs/Dash Température.JPG" alt="Tableau de Bord Températures" width="600"/>
</div>

---

## 🌍 Aperçu du Projet
**ClimatePulse** combine des données météorologiques historiques, des traitements avancés, un système IA et des visualisations interactives pour fournir des indicateurs clés aux chercheurs, décideurs, agriculteurs, ou passionnés de climat.

---

## 🚀 Fonctionnalités Principales

### 📥 Collecte et Traitement des Données
- Extraction des données météorologiques pour les villes marocaines (températures, précipitations, vents).
- Nettoyage et transformation avec **Python**, **Power Query**, et intégration dans **Snowflake**.
- Enrichissement avec des métadonnées géographiques (lat/lon, régions).

### 📊 Visualisation Interactive
- Tableaux de bord Power BI :
  - Températures : évolutions annuelles/mensuelles.
  - Précipitations : top villes pluvieuses.
  - Vents : rose des vents, vitesses moyennes.
- Application web **Streamlit** avec graphiques dynamiques et filtres par ville, région, ou période.

### 🤖 Chatbot IA Climatique (RAG)
- **RAG (Retrieval-Augmented Generation)** pour répondre à vos questions climatiques.
- Modèles LLM utilisés :
  - [`Mistral-7B`](https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.1) via [TogetherAI](https://www.together.ai/)
  - Fallback LLM : [OpenRouter](https://openrouter.ai/)
- Index vectoriel via **FAISS** et embeddings avec **Sentence Transformers**.
- Réponses contextualisées à partir des données climatiques indexées.
- Chatbot intégré dans l’application Streamlit.

---

## 🛠️ Technologies Utilisées

| Domaine | Technologies |
|--------|--------------|
| Collecte | Python, Pandas, Web Scraping, Meteostat |
| Stockage | Snowflake (Data Warehouse) |
| Visualisation | Power BI, Plotly, Streamlit |
| Backend/API | Flask, Python |
| IA & RAG | FAISS, Sentence Transformers, Mistral-7B, OpenRouter |
| DevOps | GitHub, Docker (optionnel), Streamlit Cloud |

---

## 🧠 Architecture IA - Chatbot Climat

```mermaid
graph TD
  A[Question utilisateur] --> B[Recherche dans FAISS]
  B --> C[Documents climatiques pertinents]
  C --> D[Mistral-7B (TogetherAI)]
  D --> E[Réponse générée]
📂 Structure du Projet
📁 climatepulse/
│
├── app/
│   ├── main.py               # Streamlit app
│   ├── chatbot.py            # Module RAG
│   └── etl.py                # Scripts de collecte et transformation
│
├── dashboards/
│   ├── powerbi.pbix          # Fichier Power BI
│   └── screenshots/          # Captures d’écran
│
├── data/
│   └── processed_data.csv    # Données nettoyées
│
├── docs/
│   └── *.JPG                 # Images du tableau de bord
│
└── requirements.txt          # Dépendances

💬 Exemples d’Utilisation du Chatbot IA
Q : Quelle est la température moyenne à Marrakech en août ?
R : La température moyenne à Marrakech en août est de 37,2°C, selon les données de 2018–2025.

Q : Quelles régions ont connu une hausse des précipitations ?
R : Les régions du Nord (Rabat, Tanger) montrent une augmentation des précipitations depuis 2021

📸 Captures d’Écran
<div align="center"> <img src="docs/Accueil.JPG" alt="Accueil" width="500"/> <p><strong>Vue d'ensemble des indicateurs climatiques par région.</strong></p> </div>
⚙️ Installation & Lancement
Python 3.8+
pip install -r requirements.txt
▶️ Lancer l’application Streamlit avec le chatbot :
streamlit run app/main.py
📄 Licence
Projet sous licence MIT
👥 Auteur
Jamal Oulachgar – GitHub • LinkedIn • oulachgarjamal@gmail.com
<div align="center"> <p>⭐ N'hésitez pas à laisser une étoile si vous trouvez ce projet utile !</p> </div> ```

