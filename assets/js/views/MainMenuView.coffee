define(['marionette'], (Marionette) ->
  MainMenuView = Marionette.View.extend(
    events:
      'click .navigation a': 'onMenuItemClicked'

    onMenuItemClicked: () ->
      console.log(@)
  )

  return MainMenuView
)