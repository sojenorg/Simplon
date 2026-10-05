-- -----------------------------------------------------------------------------
-- a. Chiffre d'affaires total
-- -----------------------------------------------------------------------------
SELECT SUM(prix * qte) AS chiffre_affaires_total
FROM ventes;


-- -----------------------------------------------------------------------------
-- b. Ventes par produit : nombre de ventes, unités vendues et chiffre d'affaires
-- -----------------------------------------------------------------------------
SELECT
    produit,
    COUNT(*)        AS nombre_ventes,
    SUM(qte)        AS unites_vendues,
    SUM(prix * qte) AS chiffre_affaires
FROM ventes
GROUP BY produit
ORDER BY chiffre_affaires DESC;


-- -----------------------------------------------------------------------------
-- c. Ventes par région : nombre de ventes, unités vendues et chiffre d'affaires
-- -----------------------------------------------------------------------------
SELECT
    region,
    COUNT(*)        AS nombre_ventes,
    SUM(qte)        AS unites_vendues,
    SUM(prix * qte) AS chiffre_affaires
FROM ventes
GROUP BY region
ORDER BY chiffre_affaires DESC;
