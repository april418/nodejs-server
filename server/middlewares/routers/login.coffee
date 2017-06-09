###
Login
###

Express = require 'express'
router = Express.Router()

router.get '/', (request, response, next) ->
  response.render 'login'

router.post '/', (request, response, next) ->
  if request.body.account
    request.session.account =
      id: request.body.account
      password: request.body.password
  else
    response.render 'login'

module.exports = router

