# My Jekyll blog

## How to install

I added a Dockerfile, so you don't need to install all dependencies. 
Just clone the repo and build the image with
`docker build -t jekyll-image .`

And then run it with
`docker run -d --rm -p 4000:4000 -v $(pwd):/app --name jek jekyll-image`

I added a mount volume, so if you update any change it will reflect on your localhost

> I'm using Jekyll Theme Serial Programmer: https://github.com/sharadcodes/jekyll-theme-serial-programmer
> NOTE: You have to remove `url` and `baseurl` from `_config.yml` to use this theme for `<your-username>.github.io`
