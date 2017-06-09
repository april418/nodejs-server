###
Listening Handler

Event listener for HTTP server "listening" event.
###

module.exports = ->
  @logger.info "Listening on port #{@port}."

