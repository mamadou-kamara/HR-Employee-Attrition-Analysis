-- =====================================================
-- Import du CSV dans HR_PROJET
-- =====================================================
-- Exemple avec SQL*Loader (à lancer en ligne de commande)
-- sqlldr userid=ton_utilisateur/ton_motdepasse control=import_hr_projet.ctl log=import.log


LOAD DATA
INFILE 'WA_Fn-UseC_-HR-Employee-Attrition.csv'
INTO TABLE HR_PROJET
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
Age,
Attrition,
BusinessTravel,
DailyRate,
Department,
DistanceFromHome,
Education,
EducationField,
EmployeeCount,
EmployeeNumber,
EnvironmentSatisfaction,
Gender,
HourlyRate,
JobInvolvement,
JobLevel,
JobRole,
JobSatisfaction,
MaritalStatus,
MonthlyIncome,
MonthlyRate,
NumCompaniesWorked,
Over18,
OverTime,
PercentSalaryHike,
PerformanceRating,
RelationshipSatisfaction,
StandardHours,
StockOptionLevel,
TotalWorkingYears,
TrainingTimesLastYear,
WorkLifeBalance,
YearsAtCompany,
YearsInCurrentRole,
YearsSinceLastPromotion,
YearsWithCurrManager
)


-- =====================================================
-- Vérification de l'import
-- =====================================================

-- Nombre de lignes importées
SELECT COUNT(*) FROM HR_PROJET;

-- Liste des colonnes
SELECT column_name, data_type 
FROM user_tab_columns 
WHERE table_name = 'HR_PROJET';

-- Aperçu des 10 premières lignes
SELECT * FROM HR_PROJET WHERE ROWNUM <= 10;

-- Vérification de valeurs distinctes
SELECT DISTINCT Department FROM HR_PROJET;
SELECT DISTINCT Attrition FROM HR_PROJET;


-- =====================================================
-- Script d'import et de vérification : HR_PROJET
-- =====================================================

-- ⚠️ Étape 1 : Import du CSV
-- L'import se fait via SQL*Loader avec un fichier de contrôle (import_hr_projet.ctl).
-- Exemple de commande à lancer en terminal :
-- sqlldr userid=ton_utilisateur/ton_motdepasse control=import_hr_projet.ctl log=import.log

-- =====================================================
-- Étape 2 : Vérifications automatiques
-- =====================================================

-- Vérifier le nombre de lignes importées
SELECT COUNT(*) AS Total_Rows FROM HR_PROJET;

-- Vérifier la structure des colonnes
SELECT column_name, data_type 
FROM user_tab_columns 
WHERE table_name = 'HR_PROJET';

-- Aperçu des 10 premières lignes
SELECT * FROM HR_PROJET WHERE ROWNUM <= 10;

-- Vérifier les valeurs distinctes pour certaines colonnes clés
SELECT DISTINCT Department FROM HR_PROJET;
SELECT DISTINCT Attrition FROM HR_PROJET;
SELECT DISTINCT JobRole FROM HR_PROJET;

-- Vérifier quelques statistiques simples
SELECT AVG(MonthlyIncome) AS Avg_Income FROM HR_PROJET;
SELECT AVG(YearsAtCompany) AS Avg_Tenure FROM HR_PROJET;

-- =====================================================
-- Fin du script import_data.sql
-- =====================================================
