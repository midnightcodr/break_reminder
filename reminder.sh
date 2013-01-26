#!/usr/bin/env bash
(( total_lines = $(wc -l < ~/break_reminder) )) && (( line = $RANDOM % $total_lines + 1 )) && sed -n ${line}p ~/break_reminder|say
