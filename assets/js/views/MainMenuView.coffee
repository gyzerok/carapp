define(['marionette'], (Marionette) ->
  MainMenuView = Marionette.View.extend(
    ui:
      elems: '.navigation ul a'

    events:
      'click @ui.elems': 'onMenuItemClicked'

    onMenuItemClicked: () ->
      console.log(@)
  )

  return MainMenuView
)