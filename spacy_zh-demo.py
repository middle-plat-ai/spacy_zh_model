# coding: utf8

'''
源码：https://github.com/explosion/spaCy
'''

import spacy
nlp = spacy.load('zh_model')
text = '您喜欢马吗？'
tokens = nlp(text)
for token1 in tokens:
    print(token1)
    # for token2 in tokens:
    #     print(token1.text, token2.text, token1.similarity(token2))

##实体
for ent in tokens.ents:
    print(ent.label_, ent.text)
