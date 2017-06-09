###
Loader

Define order of modules in loading.
###

module.exports =
  '/': require './root'
  '/login': require './login'
  '/index': require './index'
  '/users': require './users'

