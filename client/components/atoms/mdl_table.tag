mdl-table.mdl-data-table.mdl-js-data-table
  thead
    tr
      th(each="{^ column in columns}" class="{^ mdl-data-table__cell--non-numeric: !column.isNumeric}")
      | {column.label}

  tbody
    tr(each="{^ item in items}")
      td(each="{^ column in columns}" class="{^ mdl-data-table__cell--non-numeric: !column.isNumeric}")
      | {item[column.key]}

  script.
    @columns = opts.columns ? []
    @items = opts.items ? []

