mdl-tooltip.mdl-tooltip(data-mdl-for="{foo}")
  span {label}

  script.
    @foo = opts.foo
    @label = opts.label

