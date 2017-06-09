###
Root
###

Express = require 'express'
router = Express.Router()

router.get '/', (request, response, next) ->
  response.redirect '/login'

module.exports = router

