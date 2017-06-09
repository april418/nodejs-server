###
Maps
###

Express = require 'express'
router = Express.Router()

# GET home page.
router.get '/', (request, response, next) ->
  response.render ''

module.exports = router

