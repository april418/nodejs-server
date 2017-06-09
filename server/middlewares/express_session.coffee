###
Express Session


###

Session = require 'express-session'
Config = require 'config'

module.exports = Session
  secret: Config.get 'secret'
  resave: false
  saveUninitialized: false
  cookie:
    # miliseconds
    maxAge: 30 * 60 * 1000

