axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
lost         = require 'lost'


module.exports =
  ignores: ['readme.md', '**/layout.*','**/ejs-partials', '**/_*', '.gitignore', 'ship.*conf', '**/semantic/**/*.*']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl', 'assets/css/*.less', 'assets/css/*.css', postcss:true)
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  postcss:
    use: [lost()]
    map: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true