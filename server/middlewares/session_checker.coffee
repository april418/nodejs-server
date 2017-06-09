###
Session Checker
###

module.exports = (request, response, next) ->
  if request.path is '/login' or request.session.account
    next()
  else
    response.redirect '/login'

