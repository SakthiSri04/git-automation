#!/bin/bash

DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "Automated Job Execution" >> job_output.log
echo "Date: $DATE" >> job_output.log
echo "Status: SUCCESS" >> job_output.log
echo "------------------------" >> job_output.log

git add job_output.log

git commit -m "Automated job output - $DATE"

git push origin scheduled-job

echo "Job output committed and pushed to GitHub successfully."
