define([
    'marionette'
    'jquery'
    'handlebars'
    'hbs!/templates/MainMenu'
  ], (Marionette, $, Handlebars, tpl) ->
  MainMenuView = Marionette.ItemView.extend(
    template: tpl #Handlebars.compile(tpl)
    tagName: 'ul'

    ui:
      elems: 'li'

    events:
      'click @ui.elems': 'onMenuItemClicked'

    onMenuItemClicked: (e) ->
      $(@.ui.elems).removeClass('active')
      console.log(e.target)
      $(e.target).addClass('active')
  )

  return MainMenuView
)