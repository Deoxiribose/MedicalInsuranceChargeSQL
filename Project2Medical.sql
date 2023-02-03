--Test Run of SQL Query/Data
Select * 
From MedicalPortfolio..insurance$

--Calculate Average Charges in Ages 20-25

SELECT sex, ROUND(AVG(charges), 2) AS avg_charges 
FROM insurance$ 
WHERE age BETWEEN 20 AND 25 
GROUP BY sex;

--Calculate Average Charges in Smokers 20-25
SELECT sex, ROUND(AVG(charges), 2) AS avg_charges 
FROM insurance$ 
WHERE age BETWEEN 20 AND 25 AND smoker = 'yes' 
GROUP BY sex;

--Overall Calulation of Smokers within 20-25
SELECT smoker, ROUND(AVG(charges), 2) AS avg_charges 
FROM insurance$ 
WHERE age BETWEEN 20 AND 25 
GROUP BY smoker;


--Summary Statistics of Average Charges for Smokers vs. Non-Smokers, Ages 20-25
SELECT smoker, ROUND(AVG(charges), 2) AS avg_charges, ROUND(MIN(charges), 2) AS min_charges, ROUND(MAX(charges), 2) AS max_charges, ROUND(STDEV(charges), 2) AS stdev_charges 
--Use The Round Function to Get an Accurate 2 Decimal System
FROM insurance$ 
WHERE age BETWEEN 20 AND 25 
GROUP BY smoker;

--Child Count and Average Charges by Region
SELECT region, SUM(children) AS total_children, AVG(charges) AS avg_charges
FROM insurance$
GROUP BY region;

--Standard Deviation of Charges by Region
SELECT region, STDEV(charges) AS charges_stdev
FROM insurance$
GROUP BY region;


--Avg Charges by Region and Smoker Status
SELECT region, smoker, AVG(charges) AS avg_charges
FROM insurance$
GROUP BY region, smoker;

--Smoker vs Non-Smoker Average Age Comparison
SELECT smoker, AVG(age) AS avg_age
FROM insurance$
GROUP BY smoker;

--BMI calculations dependent on smoker status
SELECT smoker, AVG(bmi) AS avg_bmi, MIN(bmi) AS min_bmi, MAX(bmi) AS max_bmi, STDEV(bmi) AS stdev_bmi
FROM insurance$
GROUP BY smoker;


--BMI Calculations dependent on Region
SELECT region, AVG(bmi) AS avg_bmi, MIN(bmi) AS min_bmi, MAX(bmi) AS max_bmi, STDEV(bmi) AS stdev_bmi
FROM insurance$
GROUP BY region;


--Displays BMI by Age 
SELECT age, AVG(bmi) AS avg_bmi, MIN(bmi) AS min_bmi, MAX(bmi) AS max_bmi, STDEV(bmi) AS stdev_bmi
FROM insurance$
GROUP BY age
ORDER BY age;

 