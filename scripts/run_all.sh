#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Run 01.initial-evaluation
cd "$SCRIPT_DIR"/../01.initial-evaluation
bash eval.sh
cd "$SCRIPT_DIR"

# Run 02.full-finetuning
cd "$SCRIPT_DIR"/../02.full-finetuning
bash finetune.sh
bash eval.sh
cd "$SCRIPT_DIR"

# Run 03.heads-finetuning
cd "$SCRIPT_DIR"/../03.heads-finetuning
bash finetune.sh
bash eval.sh
cd "$SCRIPT_DIR"

# Run 04.lora-finetuning
cd "$SCRIPT_DIR"/../04.lora-finetuning
bash finetune.sh
bash eval.sh
cd "$SCRIPT_DIR"

# Run 05.transfer-learning
cd "$SCRIPT_DIR"/../05.transfer-learning
bash finetune.sh
bash eval.sh
cd "$SCRIPT_DIR"