###
Stylus Middleware
###

Stylus = require 'stylus'
Path = require 'path'

module.exports = Stylus.middleware
  src: Path.join __dirname, '../../client'
  dest: Path.join __dirname, '../../public'
  compress: true
  compile: (src, path) ->
    Stylus src
      .set 'filename', path
      # include css on @import
      .set 'include css', true

