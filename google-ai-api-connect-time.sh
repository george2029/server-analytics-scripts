#!/bin/bash
# TCP connect time to the Google AI (Gemini) API. 0s means it could not connect.
time=$(curl -s -o /dev/null -w "%{time_connect}" https://generativelanguage.googleapis.com)
echo "Connect time to Google AI API:   ${time}s"
