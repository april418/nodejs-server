###
Application

Create application server instance.
###

Config = require 'config'
RequestListener = require './request_listener'
Server = require './server'
Logger = require './logger'
middlewares = require './middlewares/loader'
routers = require './middlewares/routers/loader'
requestHandlers = require './middlewares/handlers/loader'
serverHandlers = require './handlers/loader'

class Application extends Server
  constructor: ->
    # create logger instance
    @logger = new Logger Config.get 'logger'
    # set logger middleware
    middlewares.unshift @logger.toMiddleware Config.get 'requstLogger'

    requestListener = RequestListener
      environments: Config.get 'express'
      middlewares: middlewares
      routers: routers
      handlers: requestHandlers
      logger: @logger

    super
      requestListener: requestListener
      port: Config.get 'port'
      handlers: serverHandlers

  start: ->
    @logger.info "Running server on port #{@port}."
    super()

module.exports = Application

