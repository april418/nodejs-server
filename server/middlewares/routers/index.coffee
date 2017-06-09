###
Index
###

Express = require 'express'
router = Express.Router()

# GET home page.
router.get '/', (request, response, next) ->
  response.render 'index', {title: 'Express'}

module.exports = router

