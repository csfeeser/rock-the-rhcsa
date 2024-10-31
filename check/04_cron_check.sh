#!/bin/bash

# Check for the cron job entry that runs every five minutes and tars /etc to bowser_capture.tar.gz
if crontab -l -u student | grep -q "tar -czf /home/student/bowser_capture.tar.gz /etc"; then
    echo -e "\e[32mSUCCESS!\e[0m"
else
    echo -e "\e[31mNO PASS- TRY AGAIN!\e[0m"
fi
