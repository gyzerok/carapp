define([
    'backbone'
    'marionette'
    'MainMenuView'
  ], (Backbone, Marionette, MainMenuView) ->
  CarApp = new Marionette.Application(
    regions:
      MainMenuRegion: '#mainMenu'
  )

  CarApp.addInitializer () ->
    mainMenu = new MainMenuView()
    CarApp.MainMenuRegion.show(mainMenu)

  CarApp.on('intialize:after', () ->
    if Backbone.history? then Backbone.history.start()
  )

  return CarApp
)