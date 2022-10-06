#!/bin/bash
if [[ ! $(pgrep -f /home/ellis/Perplex/perplex.py) ]]; then
    bash /home/ellis/scripts/perplex.sh
fi