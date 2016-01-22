# roots-starter

this ist a test for discovergy website

### Setup

- make sure [node.js](http://nodejs.org) and [roots](http://roots.cx) are installed
- clone this repo down and use the command line to `cd` into the folder
- run `npm install` via command line
- run `roots watch` via command line

### Usage

#### HTML
 - html templates live in the `./views` folder
 - you can currently use jade and ejs as templating engine
 - just save you source files with `*.jade` or `.ejs` extentions in `./views` and they will compile to `.html` files in the `./public` folder when you run `roots watch` from the command line.
 - in the browser [localhost:1111](http://localhost:1111) will show the index.html compiled from [jade](http://jade-lang.com/) and [localhost:1111/about.html](http://localhost:1111/about.html) will show about.html compiled from [ejs](http://www.embeddedjs.com)
 
#### CSS
 - Styles live in `./assets/css`
 - you can use vanilla `*.css`, `*.styl`, or `*.less` as source files
 - will compile to `*.css` 


[//]: # (### Deploying)

[//]: # (- If you just want to compile the production build, run `roots compile -e production` and it will build to public.)
[//]: # (- To deploy your site with a single command, run `roots deploy -to XXX` with `XXX` being whichever [ship](https://github.com/carrot/ship#usage) deployer you want to use.)