Question 1: Does disability status affect student outcomes?
SELECT disability, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY disability, final_result;

Question 2: Does region affect student outcomes?
SELECT region, final_result, COUNT(*) AS number_of_students
FROM studentInfo
GROUP BY region, final_result;