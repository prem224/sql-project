SELECT c.full_name, j.job_title
FROM Candidates c
JOIN Applications a ON c.candidate_id = a.candidate_id
JOIN JobPositions j ON a.job_id = j.job_id
WHERE j.job_title = 'Software Developer';
SELECT c.full_name, j.job_title, i.interview_date, i.interviewer
FROM Interviews i
JOIN Applications a ON i.application_id = a.application_id
JOIN Candidates c ON a.candidate_id = c.candidate_id
JOIN JobPositions j ON a.job_id = j.job_id;
SELECT j.job_title, COUNT(a.application_id) AS total_applications
FROM JobPositions j
LEFT JOIN Applications a ON j.job_id = a.job_id
GROUP BY j.job_title;
