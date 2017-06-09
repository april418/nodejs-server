###
Default Environment Configuration

This file define application environment variables.
###

Path = require 'path'

module.exports =
  express:
    views: Path.join __dirname, '../client/views'
    'view engine': 'pug'
  logger:
    replaceConsole: true
  requstLogger:
    level: 'auto'
    format: ':status :method :url'

