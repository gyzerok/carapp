require.config(
  baseUrl: '/js'
  paths:
    jquery: 'dependencies/jquery'
    underscore: 'dependencies/underscore'
    backbone: 'dependencies/marionette/backbone-min'
    marionette: 'dependencies/marionette/backbone.marionette.min'
    hbs: 'dependencies/hbs'
    handlebars: 'dependencies/handlebars'
    CarApp: 'apps/CarApp'
    MainMenuView: 'views/MainMenuView'
)
require(['CarApp'], (CarApp) ->
  CarApp.start()
)