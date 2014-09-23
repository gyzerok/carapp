define(['backbone', 'marionette'], (Backbone, Marionette) ->
  CarApp = new Marionette.Application()

  CarApp.addInitializer () ->

  CarApp.on('intialize:after', () ->
    if Backbone.history? then Backbone.history.start()
  )

  return CarApp
)