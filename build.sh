#!/bin/bash

if [ ! -d "metafiles" ]; then
    mkdir metafiles
fi

xelatex -output-directory=metafiles main
biber --input-directory=metafiles --output-directory=metafiles main
xelatex -output-directory=metafiles main
xelatex -output-directory=metafiles main

ln -s metafiles/main.pdf

