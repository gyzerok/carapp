 # User.coffee
 #
 # @description :: TODO: You might write a short summary of how this model works and what it represents here.
 # @docs        :: http://sailsjs.org/#!documentation/models

bcrypt = require('bcrypt')

module.exports =

  attributes:
    email:
      type: 'string'
      unique: true
      required: true
      email: true
    password:
      type: 'string'
      minLength: 6

    toJSON: () ->
      obj = @.toObject()
      delete obj.password
      return obj

  beforeCreate: (vals, next) ->
    bcrypt.hash(vals.password, 10, (err, hash) ->
      if err? then return next(err)
      vals.password = hash
      next()
    )

  beforeUpdate: (vals, next) ->
    bcrypt.hash(vals.password, 10, (err, hash) ->
      if err? then return next(err)
      vals.password = hash
      next()
    )