###
Request Listener

Simplify initializing express instance.
###

Express = require 'express'

class ExpressInitializer
  constructor: (options = {}) ->
    @_express = Express()

    # Frist, set environment variables.
    @_setEnvironments options.environments if options.environments
    @_express.set 'logger', options.logger if options.logger
    # Second, set application-level middlewares.
    @_setMiddlewares options.middlewares if options.middlewares
    # Third, set router-level middlewares.
    @_setRouters options.routers if options.routers
    # Fourth, set error-handling middlewares.
    @_setHandlers options.handlers if options.handlers

  # Return initialzed express instance(also HTTP Server's request listener function).
  getInitializedInstance: ->
    @_express

  _setEnvironments: (environments = {}) ->
    for key, value of environments
      @_express.set key, value

  _setMiddleware: (middleware) ->
    @_express.use middleware

  _setMiddlewares: (middlewares = []) ->
    for middleware in middlewares
      @_setMiddleware middleware

  _setRouter: (route, router) ->
    @_express.use route, router

  _setRouters: (routers = {}) ->
    for route, router of routers
      @_setRouter route, router

  _setHandler: (handler) ->
    @_express.use handler

  _setHandlers: (handlers = []) ->
    for handler in handlers
      @_setHandler handler

RequestListener = (options) ->
  initializer = new ExpressInitializer options
  initializer.getInitializedInstance()

module.exports = RequestListener

