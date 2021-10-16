#!/bin/bash
cd ${HOME}/assestment1/  ;  git checkout master ; git pull origin master && echo Script running at  $(date +'%d-%m-%Y %H-%M-%S')   >> ${HOME}/test.txt || echo Script not working for some reaseon at $(date +'%d-%m-%Y %H-%M-%S') >> ${HOME}/test.txt

