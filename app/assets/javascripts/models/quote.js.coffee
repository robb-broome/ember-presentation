EmberPresentation.Quote = Ember.Object.extend
  symbol: null
  last: null

  init: ->
    @_super()
    @update()

  update: ->
    @setProperties
      last: Math.random() * 100

EP.Quote.reopen
  observerCount: 0
  lastRounded: null

  lastObserver: (->
    @incrementProperty 'observerCount'
    @set 'lastRounded', Math.round(@last)
  ).observes('last')
