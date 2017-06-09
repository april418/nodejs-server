painter
  virtual(each="{^ layer, index in layers}")
    canvas(id="{}")

  script.
    Three = require 'three'

    @layers = opts.layers ? []

    @getLayerId = (index) ->
      'painter-' + @_riot_id + '-layer-' + index

