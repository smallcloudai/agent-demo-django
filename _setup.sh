#!/bin/bash

# get current dir
current_dir=$(dirname $(realpath $0))
$current_dir/.refact/_setup.sh

# run postgres from docker
docker compose up db -d      

export POSTGRES_PASSWORD=onuv41en429uow
export POSTGRES_HOST=127.0.0.1
export POSTGRES_USER=vasya1337
export POSTGRES_PORT=5432
export POSTGRES_DB=mydjango
export PGPASSWORD=$POSTGRES_PASSWORD
#psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U vasya1337 -d $POSTGRES_DB

pip install -r $current_dir/requirements.txt


python manage.py migrate
python manage.py makemigrations blog


