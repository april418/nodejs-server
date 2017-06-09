mdl-button(disabled="{disabled}" class="{klass}")
  i.material-icons(if="{icon}") {icon}
  virtual(if="{label}") {label}

  script.
    require 'material-design-lite'

    # options
    @disabled = if opts.disabled then true else false
    @withRipple = if opts.withRipple then true else false
    @raised = if opts.raised then true else false
    @colored = if opts.colored then true else false
    @primary = if opts.primary then true else false
    @accent = if opts.accent then true else false
    @fab = if opts.fab or opts.miniFab then true else false
    @miniFab = if opts.miniFab then true else false
    @icon = opts.icon
    @label = opts.label

    # generate button's class
    @klass = ['mdl-button', 'mdl-js-button']
    @klass.push 'mdl-js-ripple-effect' if @withRipple
    @klass.push 'mdl-button--raised' if @raised
    @klass.push 'mdl-button--colored' if @colored
    @klass.push 'mdl-button--primary' if @primary
    @klass.push 'mdl-button--accent' if @accent
    @klass.push 'mdl-button--fab' if @fab
    @klass.push 'mdl-button--mini-fab' if @miniFab
    @klass.push 'mdl-button--icon' if @icon and not @fab
    @klass = @klass.join ' '

    console.log @
