---
layout: post
title: Creating a webpage with jekyll and cursor
date: 2025-01-21 10:18:00
categories: [AI, jekyll, Cursor]
---

How to use AI and create a webpage in a couple of days with no much knowledge about front.

![pequeños excavadores]({{site.baseurl}}/assets/images/pequeños-excavadores.JPG)


The Wonders of AI!

In just a few hours, I created this static website and published it via GitHub. I think the most challenging part was making the profile picture round instead of oval (CSS hierarchies are still a mystery to me). Nevertheless, with general knowledge, you can achieve incredible results in no time!

Now, let’s get to work:

1. The first step was to find a Jekyll theme I liked and clone the repository to use as a base. Explore the [galleries](https://jekyllrb.com/docs/themes/)
Alternatively, you can generate an almost-empty template using `jekyll new mysitename` (once you follow up step 2 to install jekyll), but you’ll have to work on many more aspects yourself.

2. The instructions to install Jekyll are on the first page of their [documentation](https://jekyllrb.com/docs/)
If you want an easier route, you can clone my repository and run the Dockerfile to avoid installing everything locally. All you need is Docker installed, and then run the dev.sh file. It’s straightforward: it removes the container (if it exists), recreates the image (I’ll make this more efficient later to only update the necessary layer), and starts a container with a volume. This way, any changes you make locally will automatically reflect at localhost:4000. (If you check the Dockerfile, it includes the `--livereload`command, which helps with this as well).

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Link to my repo with Dockerfile](https://github.com/cmercadal/cmercadal.github.io/tree/main)

3. If you work on a repository named yourusername.github.io, your page will be live at that same address!

4. I used Cursor, which includes a chat feature that allows you to ask questions to better understand the code and customize the parts you want.


**Happy coding!**

