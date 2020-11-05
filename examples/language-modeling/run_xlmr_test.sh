#!/usr/bin/env bash

export TRAIN_FILE=/Users/ahmetustun/Desktop/nlp-tools/adapter-transformers/examples/language-modeling/data/tr-wiki.head.txt
export TEST_FILE=/Users/ahmetustun/Desktop/nlp-tools/adapter-transformers/examples/language-modeling/data/tr-wiki.tail.txt

python run_language_modeling_with_new_vocab.py \
    --output_dir=output \
    --model_type=bert \
    --model_name_or_path=xlm-roberta-base \
    --tokenizer_name=dbmdz/bert-base-turkish-cased \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 2 \
    --do_train \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --mlm \
    --language turk \
    --train_adapter \
    --adapter_config ustun
