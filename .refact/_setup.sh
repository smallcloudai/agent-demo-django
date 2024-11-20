#!/bin/bash

# The purpose of this script is to replace refact plugin integrations and competency files
# With those which are relevant for my project

project_level_refact_configs=$(dirname $(realpath $0))

# install tools
$project_level_refact_configs/_tool_postgres.sh
$project_level_refact_configs/_tool_python.sh
$project_level_refact_configs/_tool_docker.sh
$project_level_refact_configs/_tool_сhrome.sh

# copy refact configs
user_home_dir=$(eval echo ~$USER)
ide_level_refact_configs="$user_home_dir/.cache/refact"

cp $ide_level_refact_configs/competency.yaml $ide_level_refact_configs/competency_copy.yaml
cp "$project_level_refact_configs/competency.yaml" "$ide_level_refact_configs/competency.yaml"

cp "$ide_level_refact_configs/integrations.yaml" "$ide_level_refact_configs/integrations_copy.yaml"
cp "$project_level_refact_configs/integrations.yaml" "$ide_level_refact_configs/integrations.yaml"