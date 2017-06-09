###
Server

This class is built-in HTTP module server instance wrapper.
###

HTTP = require 'http'

class Server
  constructor: (options = {}) ->
    # Get port from argument or environment.
    @port = options.port ? process.env.PORT ? 3000
    @server = if options.requestListener
      HTTP.createServer options.requestListener
    else
      HTTP.createServer()
    @_setHandlers options.handlers

  _setHandlers: (handlers = {}) ->
    for event, handler of handlers
      @server.on event, handler.bind @

  # Listen on provided port, on all network interfaces.
  start: ->
    @server.listen @port

module.exports = Server

