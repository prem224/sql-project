INSERT INTO JobPositions (job_title, department, required_skills, min_experience, posted_date)
VALUES
('Software Developer', 'IT', 'Python, SQL, Django', 1, CURDATE()),
('HR Manager', 'HR', 'Communication, Recruitment', 3, CURDATE());
INSERT INTO Candidates (full_name, email, phone, skills, experience, resume_link, applied_date)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Python, SQL', 2, 'resume/rahul.pdf', CURDATE()),
('Sneha Patel', 'sneha@gmail.com', '9988776655', 'HR, Communication', 4, 'resume/sneha.pdf', CURDATE());
