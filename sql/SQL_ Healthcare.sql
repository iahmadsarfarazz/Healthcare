-- 1. Total Patients
SELECT COUNT(DISTINCT Patient_ID) AS Total_Patients
FROM patient_clean;

-- 2. Total Doctors
SELECT COUNT(DISTINCT doctor_id) AS Total_Doctors
FROM doctor;

-- 3. Total Visits
SELECT COUNT(*) AS Total_Visits
FROM visit;

-- 4. Average Age of Patients
SELECT ROUND(AVG(Age), 2) AS Average_Age
FROM patient_clean
WHERE Age IS NOT NULL;

-- 5. Top 5 Diagnosed Conditions
SELECT Diagnosis, COUNT(*) AS Frequency
FROM visit
GROUP BY Diagnosis
ORDER BY Frequency DESC
LIMIT 5;

-- 6. Follow-Up Rate (% of visits requiring follow-up)
SELECT ROUND(
    SUM(CASE WHEN Follow_Up_Required = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS Follow_Up_Rate_Percent
FROM visit;

-- 7. Treatment Cost Per Visit (Average)
SELECT ROUND(AVG(Treatment_Cost), 2) AS Avg_Treatment_Cost_Per_Visit
FROM Treatment
WHERE Treatment_Cost IS NOT NULL;

-- 8. Total Lab Tests Conducted
SELECT COUNT(*) AS Total_Lab_Tests
FROM lab_test;

-- 9. Percentage of Abnormal Lab Results
SELECT ROUND(
    SUM(CASE WHEN Comments LIKE '%abnormal%' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS Abnormal_Lab_Result_Percent
FROM lab_test;

-- 10. Doctor Workload (Average Patients Per Doctor)
SELECT ROUND(
    COUNT(DISTINCT Patient_ID) * 1.0 / COUNT(DISTINCT Doctor_ID),
    2
) AS Avg_Patients_Per_Doctor
FROM visit;

-- 11. Total Revenue (Treatment Cost + Visit Charges)
-- Assuming ₹500 per paid visit
SELECT ROUND(
    SUM(T.Treatment_Cost) + SUM(CASE WHEN V.Visit_Type = 'Paid' THEN 500 ELSE 0 END),
    2
) AS Total_Revenue
FROM Treatment T
JOIN visit V ON T.Visit_ID = V.visit_id;
