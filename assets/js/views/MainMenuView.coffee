define([
    'marionette'
    'jquery'
    'hbs!/templates/MainMenu'
  ], (Marionette, $, tpl) ->
  MainMenuView = Marionette.ItemView.extend(
    template: tpl
    tagName: 'ul'

    ui:
      elems: 'li'

    events:
      'click @ui.elems': 'onMenuItemClicked'

    onMenuItemClicked: (e) ->
      $(@.ui.elems).removeClass('active')
      $(e.target).addClass('active')
  )

  return MainMenuView
)