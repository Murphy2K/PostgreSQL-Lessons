-- An ENUM with DEFAULT value in a table
-- First create an ENUM data type

CREATE TYPE status AS ENUM ('pending', 'approved', 'declined');

-- Create a table and assign DEFAULT value to the column

CREATE TABLE cron_jobs (
	cron_job_id INT,
	status status DEFAULT 'pending'
);

-- ==== Test with insert data ====
-- This will insert value 1 with status pending
INSERT INTO cron_jobs (cron_job_id) VALUES (1);

-- This will insert value 2 with manually given status approved
INSERT INTO cron_jobs (cron_job_id, status) VALUES (2, 'approved');
