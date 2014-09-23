require.config(
  baseUrl: '/js'
  paths:
    jquery: 'dependencies/jquery'
    underscore: 'dependencies/underscore'
    backbone: 'dependencies/marionette/backbone-min'
    marionette: 'dependencies/marionette/backbone.marionette.min'
    CarApp: 'apps/CarApp'
)
require(['CarApp'], (CarApp) ->
  CarApp.start()
)