mdl-inputfield.mdl-textfield.mdl-js-textfield.mdl-textfield--floating-label
  input.mdl-textfield__input(type="{type}" id="{uniqueId}" pattern="{pattern}")
  label.mdl-textfield__label(for="{uniqueId}") {label}
  span.mdl-textfield__error(if="{!!pattern}") {errorMessage}

  script.
    @type = opts.type ? 'text'
    @uniqueId = 'mdl-inputfield-' + @_riot_id
    @label = opts.label
    @pattern = opts.pattern
    @errorMessage = opts.errorMessage

