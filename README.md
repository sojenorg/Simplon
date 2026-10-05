# Simplon
## 1. Requêtes SQL

Le fichier `requetes.sql` contient les trois requêtes demandées :

- a. le chiffre d'affaires total ;
- b. les ventes par produit (nombre de ventes, unités vendues, chiffre d'affaires) ;
- c. les ventes par région (nombre de ventes, unités vendues, chiffre d'affaires).

Elles s'exécutent avec le client SQLite en ligne de commande (`sqlite3 ventes.db < requetes.sql`).

## 2. Notebook d'analyse

Les dépendances sont gérées avec [uv](https://docs.astral.sh/uv/) : `uv sync` crée
l'environnement virtuel `.venv` et installe les versions figées dans `uv.lock`.

```bash
uv sync
uv run jupyter notebook analyse_ventes.ipynb
```

Le notebook `analyse_ventes.ipynb` :

1. calcule avec Pandas, par produit, la moyenne et la médiane du chiffre d'affaires et du
   volume des ventes, puis l'écart-type et la variance du volume des ventes ;
2. trouve le produit le plus vendu et le moins vendu (en unités) en Python natif, sans Pandas ;
3. crée deux graphiques avec Plotly Express, sur le modèle de l'exemple fourni :
   les ventes par produit et le chiffre d'affaires par produit, exportés dans `graphiques/`.

## Résultats clés

| Indicateur               | Valeur                                              |
|--------------------------|-----------------------------------------------------|
| Chiffre d'affaires total | 44 825                                              |
| Produit le plus vendu    | Produit A (1 750 unités, CA 17 500)                 |
| Produit le moins vendu   | Produit C (575 unités, CA 11 500)                   |
| Région la plus rentable  | Sud (CA 24 100) devant Nord (CA 20 725)             |

