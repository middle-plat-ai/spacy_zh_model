#!/bin/bash

cd /data/NLP/tools/spaCy
## train zh_model
python vectors_fast_text.py /data/NLP_models/spacy/data/word2vec_c zh

## train NER
python train_ner_cn.py -mzh_model -o zh_model
python train_new_entity_type_cn.py -m zh_model -nm animal -o zh_model

## train dependency parser
python train_parser_cn.py -m zh_model -o zh_model

## train parser for custom semantics 自定义语义分析
python train_intent_parser_cn.py -m zh_model -o zh_model

## train Part-of-speech Tagger
python train_tagger_cn.py -l zh -o zh_model
