/*Questions to Answer
1. What are the top-paying jobs for data analyst jobs?
2. What are the skills required for these top-paying roles?
3. What are the most in-demand skills for data analyst jobs?
4. What are the top skills based on salary for ?
5. What are the most optimal skills to learn?
   a. Optimal: High Demand AND High Paying*/

   
SELECT
      job_id,
      job_title,
      job_location,
      job_schedule_type,
      NAME AS company_name,
      salary_year_avg,
      job_posted_date
 FROM
      job_postings_fact
LEFT JOIN
    company_dim on job_postings_fact.company_id=company_dim.company_id
WHERE 
      job_title_short='Data Analyst' AND 
      job_location='Mumbai, Maharashtra, India'  AND
      salary_year_avg IS NOT NULL
ORDER BY
      salary_year_avg DESC
   LIMIT 10 