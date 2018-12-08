# spacy_zh_model

## [spacy](https://spacy.io/)

由于spacy官方没有提供中文相关模型，要为spaCy添加中文，需要修改library的代码，最简单的方法是克隆[repository](https://github.com/explosion/spaCy)，再从源码build。


## dir tree

```
spacy_zh_model/
├── build   ##编译
├── examples
├── fabfile.py
├── include
├── README.md
├── requirements.txt
├── setup.py
├── spacy  ##spacy源码
├── spacy_zh-demo.py
├── train_intent_parser_cn.py
├── train_model.sh  ##训练中文模型
├── train_ner_cn.py ##ner
├── train_new_entity_type_cn.py  ##添加新实体
├── train_parser_cn.py
├── train_tagger_cn.py
├── vectors_fast_text.py
├── website
└── zh_model  ##训练的中文模型
    ├── meta.json
    ├── ner
    ├── parser
    ├── tagger
    ├── tokenizer
    └── vocab
└── ...
```

## 训练中文模型
    sh train_model.sh
    
or
    
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

## Reference

1 [spacy-github地址](https://github.com/explosion/spaCy/tree/master/spacy)

2 [spacy训练中文模型](https://www.jianshu.com/u/3b77f85cc918)

3 [spacy训练中文模型-code](https://github.com/jeusgao/spaCy-new-language-test-Chinese)
