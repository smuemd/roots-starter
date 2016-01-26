axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

postcssImport = require 'postcss-import'
postcssCalc  = require 'postcss-calc'
postcssCustomMedia = require 'postcss-custom-media'
postcssCustomProp = require 'postcss-custom-properties'
postcssAutoprefixer = require 'autoprefixer'
lost         = require 'lost'

# TODO: suitcss and postcss components 


module.exports =
  ignores: ['readme.md', '**/layout.*','**/ejs-partials/**/*.*', '**/_*', '.gitignore', 'ship.*conf','**/semantic/**/*.*', 'assets/css/components/**/*.*', 'assets/css/utils/**/*.*']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl', 'assets/css/*.less', 'assets/css/*.css', postcss:true)
  ]

  stylus:
    #use: [axis(), rupture(), autoprefixer()]
    use: [axis(), rupture()]
    sourcemap: true

  postcss:
    use: [postcssAutoprefixer(), postcssImport(), postcssCalc(), postcssCustomMedia(), postcssCustomProp(), lost()]
    map: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true