define(['marionette'], (Marionette) ->
  MainLayout = Marionette.LayoutView.extend(
    template: '#layoutTpl'
  )
  return MainLayout
)