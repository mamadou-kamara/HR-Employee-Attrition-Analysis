-- =====================================================
-- Script views_dashboards.sql
-- Vues prêtes pour BI (Power BI / Tableau)
-- =====================================================

-- 1. Vue : Taux d’attrition global
CREATE OR REPLACE VIEW vw_global_attrition AS
SELECT ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS GlobalAttritionRate
FROM HR_PROJET;

-- 2. Vue : Attrition par département
CREATE OR REPLACE VIEW vw_attrition_by_department AS
SELECT Department,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY Department;

-- 3. Vue : Attrition par rôle
CREATE OR REPLACE VIEW vw_attrition_by_role AS
SELECT JobRole,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY JobRole;

-- 4. Vue : Satisfaction vs attrition
CREATE OR REPLACE VIEW vw_satisfaction_vs_attrition AS
SELECT JobSatisfaction,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY JobSatisfaction;

-- 5. Vue : Revenu moyen par rôle
CREATE OR REPLACE VIEW vw_income_by_role AS
SELECT JobRole, AVG(MonthlyIncome) AS AvgIncome
FROM HR_PROJET
GROUP BY JobRole;

-- 6. Vue : Attrition selon heures supplémentaires
CREATE OR REPLACE VIEW vw_attrition_by_overtime AS
SELECT OverTime,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY OverTime;

-- 7. Vue : Ancienneté moyenne par département
CREATE OR REPLACE VIEW vw_tenure_by_department AS
SELECT Department, AVG(YearsAtCompany) AS AvgTenure
FROM HR_PROJET
GROUP BY Department;

-- 8. Vue : Relation satisfaction vs attrition
CREATE OR REPLACE VIEW vw_relationship_vs_attrition AS
SELECT RelationshipSatisfaction,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY RelationshipSatisfaction;

-- =====================================================
-- Fin du script views_dashboards.sql
-- =====================================================
