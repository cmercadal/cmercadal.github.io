#!/bin/zsh
docker stop jek
docker rm jek
docker build -t jekyll-image . &&
docker run -it --rm -d -p 4000:4000 -v $(pwd):/app --name jek jekyll-image

