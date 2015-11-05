#!/bin/bash

subl_template='../tmpl/subl_template'

S0="${BASH_SOURCE[0]}"
DIRNAME="$( dirname "$S0")"
DIR="$( cd "$DIRNAME" && pwd)"
foler_path=$DIR
echo $foler_path
eval "echo \"$(<${subl_template})\" > test.txt"