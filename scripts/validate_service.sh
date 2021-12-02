#!/bin/bash

curl -v --silent localhost:5000/status 2>$1  | grep ok