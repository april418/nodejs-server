###
Static Files
###

Express = require 'express'
Path = require 'path'

module.exports = Express.static Path.join(__dirname, '../../public'),
  dotfiles: 'ignore'
  maxAge: 0

