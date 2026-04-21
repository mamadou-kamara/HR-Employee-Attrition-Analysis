-- =====================================================
-- Script queries_analysis.sql
-- Analyses RH sur la table HR_PROJET
-- =====================================================

-- 1. Taux d’attrition global
SELECT ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS GlobalAttritionRate
FROM HR_PROJET;

-- 2. Attrition par département
SELECT Department,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY Department;

-- 3. Attrition par rôle
SELECT JobRole,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY JobRole;

-- 4. Satisfaction vs attrition
SELECT JobSatisfaction,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY JobSatisfaction;

-- 5. Revenu moyen par rôle
SELECT JobRole, AVG(MonthlyIncome) AS AvgIncome
FROM HR_PROJET
GROUP BY JobRole;

-- 6. Attrition selon heures supplémentaires
SELECT OverTime,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY OverTime;

-- 7. Ancienneté moyenne par département
SELECT Department, AVG(YearsAtCompany) AS AvgTenure
FROM HR_PROJET
GROUP BY Department;

-- 8. Relation satisfaction vs attrition
SELECT RelationshipSatisfaction,
       ROUND((COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2) AS AttritionRate
FROM HR_PROJET
GROUP BY RelationshipSatisfaction;

-- =====================================================
-- Fin du script queries_analysis.sql
-- =====================================================
