require 'material-design-lite'

Riot = require 'riot'
require '../components/atoms/mdl_button.tag'
require '../components/atoms/mdl_tooltip.tag'
require '../components/atoms/mdl_inputfield.tag'

document.addEventListener 'DOMContentLoaded', ->
  Riot.mount '*'

