#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror --reverse --continue --dereference -x ^\.git(hub)?\/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
