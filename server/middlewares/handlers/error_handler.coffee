###
Error Handler

General errror handler.
###

module.exports = (error, request, response, next) ->
  application = request.app
  # set locals, only providing error in development
  response.locals.message = error.message
  response.locals.error = if application.get 'env' is 'development' then error else {}
  # render the erroror page
  response.status error.status or 500
  response.render error

