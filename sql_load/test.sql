WITH job_openings AS(
    SELECT COUNT(job_id) AS count_of_job_openings,
    company_id
    FROM job_postings_fact
    WHERE company_id IN (
        SELECT company_id
        FROM company_dim
    )
    GROUP BY company_id
    
)

SELECT 
FROM job_openings;