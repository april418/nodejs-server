###
Logger

Create and wrap log4js instance.
###

Log4js = require 'log4js'

class Logger
  constructor: (options = {}) ->
    Log4js.configure options
    @levels = Log4js.levels
    @logger = Log4js.getLogger()
    @_createLoggerMethods()

  _createLoggerMethods: ->
    for name, obj of @levels
      continue unless obj.constructor.name is 'Level'
      methodName = name.toLowerCase()
      if @logger[methodName]
        @[methodName] = ((n) -> (message) -> @logger[n](message))(methodName)

  toMiddleware: (options = {}) ->
    Log4js.connectLogger @logger, options

module.exports = Logger

