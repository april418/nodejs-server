###
Users
###

Express = require 'express'
router = Express.Router()

# GET users listing.
router.get '/', (request, response, next) ->
  response.send 'respond with a resource'

module.exports = router

