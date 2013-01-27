EmberPresentation.Quote = Ember.Object.extend
  symbol: null
  ask: null
  bid: null
  askRounded: null
  bidRounded: null

  init: ->
    @_super()
    @update()

  update: ->
    @setProperties
      ask: Math.random() * 100
      bid: Math.random() * 100

