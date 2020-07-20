#!/bin/bash

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump.exe -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS srcrom/bkgr.gba > baserom.dump
$OBJDUMP $OPTIONS bkgr.gba > bkgr.dump
diff -u baserom.dump bkgr.dump