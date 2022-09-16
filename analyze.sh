#!/bin/bash
if ! [ -d "$1" ] ; then
  echo "Could not find data folder";
  echo "Usage: bash analyze.sh data_folder";
  exit 1;
fi
pip install -r requirements.txt -q --disable-pip-version-check
python main.py -p $1