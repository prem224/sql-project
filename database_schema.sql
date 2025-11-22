CREATE TABLE Candidates (
    candidate_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    skills TEXT,
    experience INT,
    resume_link VARCHAR(255),
    applied_date DATE
);
CREATE TABLE JobPositions (
    job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_title VARCHAR(100),
    department VARCHAR(100),
    required_skills TEXT,
    min_experience INT,
    posted_date DATE
);
CREATE TABLE Applications (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    job_id INT,
    application_status VARCHAR(30),
    FOREIGN KEY (candidate_id) REFERENCES Candidates(candidate_id),
    FOREIGN KEY (job_id) REFERENCES JobPositions(job_id)
);
CREATE TABLE Interviews (
    interview_id INT PRIMARY KEY AUTO_INCREMENT,
    application_id INT,
    interview_date DATE,
    interview_time TIME,
    interviewer VARCHAR(100),
    result VARCHAR(30),
    FOREIGN KEY (application_id) REFERENCES Applications(application_id)
);

