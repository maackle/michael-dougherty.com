title: Hello Hexo!
date: 2013-10-20 17:58:57
tags:
---

After years of not having a blog, even though I totally should have had one, I do believe I've found my ideal blogging platform: [Hexo](http://zespia.tw/hexo).  I just discovered it today, and already am in love (this blog is powered by it).  I am writing this post while I install and deploy it, and want to capture my first impressions.  But first, some description.

Hexo is a static site generator powered by node.js, one in the family of platforms like [Jekyll](jekyllrb.com) and [Hyde](http://ringce.com/hyde) (Ruby and Python, respectively).  You create a theme (one is included), write posts in markdown, and they are generated into static html files that you can simply serve up without need for a database.  I haven't tried creating a theme yet, but it seems straightforward, and the renderer has good support (through plugins) for many of the great templating languages: Coffeescript, Discount, Dotjs, Haml, Handlebars, Jade, Less, and Sass.  This is one of the reasons I picked Hexo over Jekyll or Hyde: I am determined to write every line of frontend code I can in Jade, Coffeescript, and Sass, and while the latter two are well-supported, it can be hard to find good Jade support in a framework.  I've also been hacking a lot of node.js lately, and since I've been typing `npm install` a lot lately, it seemed like a natural choice.

Speaking of installation, Hexo is extremely simple to install and get running.

	$ sudo npm install -g hexo
	$ hexo init [directory]
	$ cd [directory]
	$ hexo server

I now have a blog running at http://localhost:4000!  You can edit a single YAML file to configure things like title and URL, and edit markdown files to manage posts.  When ready to generate the static files for deployment, just say `hexo generate`.  Your entire blog will be built into the `public/` directory, ready to serve.


