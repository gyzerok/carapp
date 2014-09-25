define([
    'backbone'
    'marionette'
    'MainLayoutView'
  ], (Backbone, Marionette, MainLayoutView) ->
  CarApp = new Marionette.Application(
    regions:
      BodyRegion: '#body'
  )

  CarApp.addInitializer () ->
    layoutView = new MainLayoutView()
    CarApp.BodyRegion.show(layoutView)

  CarApp.on('intialize:after', () ->
    if Backbone.history? then Backbone.history.start()
  )

  return CarApp
)