###
Error Handler

Event listener for HTTP server "error" event.
###

module.exports =  (error) ->
  throw error if error.syscall isnt 'listen'

  # handle specific listen errors with friendly messages
  switch error.code
    when 'EACCES'
      @logger.error "Port #{@port} requires elevated privileges"
      process.exit 1
    when 'EADDRINUSE'
      @logger.error "Port #{@port} is already in use"
      process.exit 1
    else
      throw error

