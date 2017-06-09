###
Loader

Define order of modules in loading.
###

module.exports = [
  # secure settings
  require './helmet'

  # manage session
  require './express_session'

  # request body parser
  require './json_body_parser'
  require './urlencoded_body_parser'

  # request cookie parser
  require './cookie_parser'

  # stylus compiler
  require './stylus_middleware'

  # static files config
  require './static_files'

  require './session_checker'
]

