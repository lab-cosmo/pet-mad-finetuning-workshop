#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

bash "$SCRIPT_DIR"/../01.initial-evaluation/clean.sh
bash "$SCRIPT_DIR"/../02.full-finetuning/clean.sh
bash "$SCRIPT_DIR"/../03.heads-finetuning/clean.sh
bash "$SCRIPT_DIR"/../04.lora-finetuning/clean.sh
bash "$SCRIPT_DIR"/../05.transfer-learning/clean.sh