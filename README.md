# OULAD Student Performance Analysis

## Overview
This project analyzes student engagement and outcome data from the Open 
University Learning Analytics Dataset (OULAD) to understand whether factors 
like disability status, region, gender, age, and early course engagement 
are linked to student dropout and academic performance, with the aim of 
helping course teams identify at-risk student groups early and provide 
targeted support.

## Business Questions
1. Does a student's disability status affect their chance of passing or withdrawing?
2. Does a student's region affect their academic outcomes?
3. Does a student's gender affect their academic outcomes?
4. Does a student's age group affect their academic outcomes?
5. Can early engagement (VLE clicks in the first 4 weeks) predict which students will withdraw?

## Tools Used
- SQL (SQLite) — querying, joining, and aggregating student data
- Python (pandas) — *coming next*
- Power BI — *coming next*

## Key Findings

**Disability status:** Students with a disability were more likely to withdraw 
(39.3%) compared to students without a disability (30.3%), while fail rates 
were similar between the two groups (22.5% vs 21.5%). This suggests disability 
status is linked to dropout risk specifically — not academic struggle — and 
should be considered in early-intervention efforts.

**Region:** Ireland had the highest pass rate (46.6%) while North Western 
Region had the lowest (32.9%), suggesting outcomes vary meaningfully by 
region — possibly due to differences in local support access or student 
demographics across regions.

**Gender:** Female students had a slightly higher pass rate (39.0%) compared 
to male students (37.1%), but this gap was much smaller than what was seen 
for disability status or region, suggesting gender plays a relatively minor 
role in outcomes compared to those other factors.

**Age:** Older students tended to perform better than younger students — 
pass rates increased from 36.9% (0-35) to 40.3% (35-55) to 42.6% (55+), 
possibly because older students are more likely to be returning learners 
with clearer motivation or better time-management skills. However, this 
pattern should be treated with caution, especially for the 55+ group, since 
it only had 216 students — a small sample where a few individuals can swing 
the percentage significantly.

**Early engagement (strongest finding):** Students with low engagement in 
their first 4 weeks had a pass rate of just 30.3%, compared to 47.5% for 
highly engaged students — a much bigger gap than any demographic factor 
showed. This suggests early engagement is a strong early-warning signal for 
academic outcomes, and could allow course teams to identify at-risk students 
in week 3-4 and reach out with support before it's too late to change the 
outcome. Unlike the other findings, this one is predictive rather than 
descriptive — it can be acted on while the course is still running.

## How to Reproduce
1. Download the OULAD dataset from https://analyse.kmi.open.ac.uk/open-dataset
2. Import `studentInfo.csv` and `studentVle.csv` into a SQLite database 
   (e.g. using DB Browser for SQLite)
3. Run the queries in `sql/queries.sql`

## Status
🚧 In progress — next steps are adding Python-based analysis and building 
a Power BI dashboard to visualize these findings.
