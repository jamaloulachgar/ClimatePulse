import snowflake.connector
import pandas as pd

# Configuration des identifiants Snowflake
snowflake_config = {
    "account": "JFJMCMI-SI02891",
    "user": "JAMAL12",
    "password": "Jamal1jamaljamal",
    "role": "ACCOUNTADMIN",
    "warehouse": "COMPUTE_WH",
    "database": "CLIMATEPULSE_DB",
    "schema": "PUBLIC"
}

# Établir la connexion à Snowflake
conn = snowflake.connector.connect(
    account=snowflake_config["account"],
    user=snowflake_config["user"],
    password=snowflake_config["password"],
    role=snowflake_config["role"],
    warehouse=snowflake_config["warehouse"],
    database=snowflake_config["database"],
    schema=snowflake_config["schema"]
)
cursor = conn.cursor()
print("✅ Connexion à Snowflake établie.")

# Fonction pour exécuter une requête et sauvegarder les résultats
def execute_query_and_save(query, filename):
    cursor.execute(query)
    rows = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(rows, columns=columns)
    df.to_csv(filename, index=False)
    print(f"✅ Fichier '{filename}' créé avec {len(df)} lignes.")
    return df

# Requête 1 : Température moyenne annuelle par région
query1 = """
SELECT 
    region,
    YEAR(date) AS year,
    AVG(temperature_avg) AS avg_temperature
FROM weather_data
GROUP BY region, YEAR(date)
ORDER BY region, year;
"""
df1 = execute_query_and_save(query1, "temperature_by_region_year.csv")
print("\nAperçu - Température moyenne annuelle par région :")
print(df1.head())

# Requête 2 : Précipitations totales mensuelles par région
query2 = """
SELECT 
    region,
    YEAR(date) AS year,
    MONTH(date) AS month,
    SUM(precipitation) AS total_precipitation
FROM weather_data
GROUP BY region, YEAR(date), MONTH(date)
ORDER BY region, year, month;
"""
df2 = execute_query_and_save(query2, "precipitation_by_region_month.csv")
print("\nAperçu - Précipitations totales mensuelles par région :")
print(df2.head())

# Requête 3 : Température maximale annuelle par ville
query3 = """
SELECT 
    city,
    YEAR(date) AS year,
    MAX(temperature_max) AS max_temperature
FROM weather_data
GROUP BY city, YEAR(date)
ORDER BY city, year;
"""
df3 = execute_query_and_save(query3, "max_temperature_by_city_year.csv")
print("\nAperçu - Température maximale annuelle par ville :")
print(df3.head())

# Requête 4 : Vitesse moyenne du vent par région et saison
query4 = """
SELECT 
    region,
    YEAR(date) AS year,
    CASE 
        WHEN MONTH(date) IN (12, 1, 2) THEN 'Hiver'
        WHEN MONTH(date) IN (3, 4, 5) THEN 'Printemps'
        WHEN MONTH(date) IN (6, 7, 8) THEN 'Été'
        WHEN MONTH(date) IN (9, 10, 11) THEN 'Automne'
    END AS season,
    AVG(wind_speed) AS avg_wind_speed
FROM weather_data
GROUP BY region, YEAR(date), 
    CASE 
        WHEN MONTH(date) IN (12, 1, 2) THEN 'Hiver'
        WHEN MONTH(date) IN (3, 4, 5) THEN 'Printemps'
        WHEN MONTH(date) IN (6, 7, 8) THEN 'Été'
        WHEN MONTH(date) IN (9, 10, 11) THEN 'Automne'
    END
ORDER BY region, year, season;
"""
df4 = execute_query_and_save(query4, "wind_speed_by_region_season.csv")
print("\nAperçu - Vitesse moyenne du vent par région et saison :")
print(df4.head())

# Fermer la connexion
cursor.close()
conn.close()
print("✅ Connexion à Snowflake fermée.")