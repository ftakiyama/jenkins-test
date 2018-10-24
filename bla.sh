#!/bin/sh

if [ "$target_env" = "development" ]
then
  printf "Will deploy to 178"
else
  printf "Will deploy to 174"
fi