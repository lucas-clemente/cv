#!/bin/bash

rm -rf dist/
broccoli build dist
rsync -avz --delete dist/ clemente.io:/var/www/cv/
