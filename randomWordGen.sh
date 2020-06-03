#!/bin/bash
#Random word generator
WORD_DIR=/usr/share/dict/words
LINE_NUM=$( cat /usr/share/dict/words | wc -l )
RANDOM_WORD_NUM=$(( $RANDOM % $LINE_NUM + 1 ))
sed -n "$RANDOM p" $WORD_DIR