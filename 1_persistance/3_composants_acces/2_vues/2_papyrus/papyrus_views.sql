USE papyrus;

CREATE OR REPLACE VIEW v_GlobalCde AS
SELECT ligcom.codart, libart, sum(qtecde) AS QteTot, sum(qtecde*priuni) AS PrixTot FROM ligcom
JOIN produit ON ligcom.codart = produit.codart;

CREATE OR REPLACE VIEW v_VentesI100 AS
SELECT vente.* FROM vente
JOIN produit ON vente.codart = produit.codart
WHERE vente.codart = 'I100';

CREATE OR REPLACE VIEW v_VentesI100Grobrigan AS
SELECT * FROM v_VentesI100
WHERE numfou = '00120';
