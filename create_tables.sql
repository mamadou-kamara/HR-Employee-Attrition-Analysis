-- =====================================================
-- Script de création de la table principale HR_PROJET
-- =====================================================

CREATE TABLE HR_PROJET (
    Age NUMBER,
    Attrition VARCHAR2(10),
    BusinessTravel VARCHAR2(50),
    DailyRate NUMBER,
    Department VARCHAR2(50),
    DistanceFromHome NUMBER,
    Education NUMBER,
    EducationField VARCHAR2(50),
    EmployeeCount NUMBER,
    EmployeeNumber NUMBER PRIMARY KEY,
    EnvironmentSatisfaction NUMBER,
    Gender VARCHAR2(10),
    HourlyRate NUMBER,
    JobInvolvement NUMBER,
    JobLevel NUMBER,
    JobRole VARCHAR2(50),
    JobSatisfaction NUMBER,
    MaritalStatus VARCHAR2(20),
    MonthlyIncome NUMBER,
    MonthlyRate NUMBER,
    NumCompaniesWorked NUMBER,
    Over18 VARCHAR2(5),
    OverTime VARCHAR2(5),
    PercentSalaryHike NUMBER,
    PerformanceRating NUMBER,
    RelationshipSatisfaction NUMBER,
    StandardHours NUMBER,
    StockOptionLevel NUMBER,
    TotalWorkingYears NUMBER,
    TrainingTimesLastYear NUMBER,
    WorkLifeBalance NUMBER,
    YearsAtCompany NUMBER,
    YearsInCurrentRole NUMBER,
    YearsSinceLastPromotion NUMBER,
    YearsWithCurrManager NUMBER
);

-- =====================================================
-- Vérification de la création
-- =====================================================
-- Liste des colonnes
SELECT column_name, data_type 
FROM user_tab_columns 
WHERE table_name = 'HR_PROJET';

-- Nombre de lignes (après import)
SELECT COUNT(*) FROM HR_PROJET;

-- Aperçu des données
SELECT * FROM HR_PROJET WHERE ROWNUM <= 10;

-- =====================================================
-- Fin du script create_tables.sql
-- =====================================================
