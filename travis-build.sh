#!/bin/bash

set -e

docker build -t adaptivehealthintelligence/pgbackup:10 .
docker push adaptivehealthintelligence/pgbackup:10


