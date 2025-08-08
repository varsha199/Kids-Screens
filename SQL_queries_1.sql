-- GOAL 2: Identify key influencing factors
-- Average screen time by age group
SELECT age, AVG(avg_daily_screen_time_hr) AS avg_screen_time
FROM child
GROUP BY age;

-- Average screen time by device type
SELECT primary_device, AVG(avg_daily_screen_time_hr) AS avg_screen_time
FROM child
GROUP BY primary_device;

-- Goal 3: Detect potential risks
-- Percentage of children exceeding recommended screen time
SELECT exceeded_recommended_limit, 
COUNT(*)*100 /(SELECT COUNT(*) FROM child) AS percentage
FROM child
GROUP BY exceeded_recommended_limit;

-- Correlation between screen time and health impacts
SELECT i.impact_name,
COUNT(h.child_id) AS num_child_affected
FROM health_status_impact AS h
JOIN impact AS i ON i.impact_id = h.impact_id
GROUP BY i.impact_name
ORDER BY num_child_affected DESC;

-- By age group number of child affected
SELECT c.age,
  COUNT(DISTINCT h.child_ID) AS num_affected_children
FROM health_status_impact AS h
JOIN child AS c ON h.child_ID = c.Child_ID
GROUP BY c.age
ORDER BY c.age;

-- By number of child affected, we are trying to get the impact by age group
SELECT c.age, i.impact_name,
COUNT(h.child_id) AS num_child_affected
FROM child AS c
JOIN health_status_impact AS h ON h.child_id = c.child_id
JOIN impact AS i ON i.impact_id = h.impact_id
GROUP BY c.age, i.impact_name
ORDER BY num_child_affected DESC;
