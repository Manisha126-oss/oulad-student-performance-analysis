-- Question 1: Does disability status affect student outcomes?
SELECT disability, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY disability, final_result;

-- Question 2: Does region affect student outcomes?
SELECT region, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY region, final_result;

-- Question 3: Does gender affect student outcomes?
SELECT gender, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY gender, final_result;

-- Question 4: Does age band affect student outcomes?
SELECT age_band, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY age_band, final_result;

-- Question 5: Can early engagement (VLE clicks) predict withdrawal?
SELECT
  CASE
    WHEN early_clicks.total_clicks < 50 THEN 'Low engagement'
    WHEN early_clicks.total_clicks < 200 THEN 'Medium engagement'
    ELSE 'High engagement'
  END AS engagement_level,
  studentInfo.final_result,
  COUNT(*) AS number_of_students
FROM
  (SELECT id_student, SUM(sum_click) AS total_clicks
   FROM studentVle
   WHERE date BETWEEN 0 AND 28
   GROUP BY id_student) AS early_clicks
JOIN studentInfo
  ON early_clicks.id_student = studentInfo.id_student
GROUP BY engagement_level, studentInfo.final_result;
