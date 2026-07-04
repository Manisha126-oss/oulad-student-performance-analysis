# OULAD Student Performance Analysis

## Overview
This project analyzes student engagement and outcome data from the Open 
University Learning Analytics Dataset (OULAD) to understand whether factors 
like disability status, region, and gender are linked to student dropout 
and academic performance, with the aim of helping course teams identify 
at-risk student groups early and provide targeted support.

## Business Questions
1. Does a student's disability status affect their chance of passing or withdrawing?
2. Does a student's region affect their academic outcomes?
3. Does a student's gender affect their academic outcomes?
4. *(Coming next)* Does age group affect outcomes?
5. *(Coming next)* Can early engagement (VLE clicks) predict which students will withdraw?

## Tools Used
- SQL (SQLite) — querying and aggregating student data
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

## How to Reproduce
1. Download the OULAD dataset from https://analyse.kmi.open.ac.uk/open-dataset
2. Import `studentInfo.csv` into a SQLite database (e.g. using DB Browser for SQLite)
3. Run the queries in `sql/queries.sql`

## Status
🚧 In progress — next steps are analyzing age group, adding Python-based 
engagement analysis, and building a Power BI dashboard.
