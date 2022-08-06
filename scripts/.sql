---Question 1
SELECT COUNT (*) 
FROM data_analyst_jobs; 
---ANSWER:1793

---Question 2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
---ANSWER: ExxonMobil

---Question 3
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN';
---ANSWER: 21

---Question 3 (continued)
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
---ANSWER: 27

---Question 4
SELECT *
FROM data_analyst_jobs
WHERE star_rating >4
AND location = 'TN';
---ANSWER: 3

---Question 5
SELECT *
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
---ANSWER: 151

---Question 6
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;
---ANSWER: NE (Nebraska?)

---Question 7
SELECT DISTINCT(title)
FROM data_analyst_jobs;
---ANSWER: 881

---Question 8
SELECT DISTINCT(title), location
FROM data_analyst_jobs
WHERE location = 'CA';
---ANSWER: 230

---Question 9
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count >5000 
AND company IS NOT NULL
GROUP BY company;
---ANSWER:40

---Question 10
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count >5000
GROUP BY company
ORDER BY avg_rating DESC, company;
---ANSWER: American Express, avg_rating = 4.1999998...there are 5 other companies with the same rating, but I selected the first alphabetically

---QUESTION 11
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE UPPER(title) LIKE '%ANALYST%';
---ANSWER: 774, using COUNT - ANSWER: 1669

---Question 12
SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE UPPER(title) NOT LIKE '%ANALYST%' AND UPPER(title) NOT LIKE '%ANALYTICS%';
---ANSWER: 4

---BONUS
SELECT domain, COUNT(title), days_since_posting 
FROM data_analyst_jobs
WHERE skill LIKE '%SQL%'
AND days_since_posting >(3*7)
AND domain IS NOT NULL
GROUP BY domain, days_since_posting
ORDER BY COUNT(title) DESC
LIMIT 4;
---Internet and Software (#1), Banks and Financial Services (#2), Consulting and Business Services (#3)...ALL are 30 days so 4 weeks





