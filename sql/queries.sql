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
