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

EP.Quote.reopen
  openChangeCount: 0
  open: Ember.computed ->
    @incrementProperty 'openChangeCount'
    Math.round(Math.random() * 1000)

  uncached: Ember.computed ->
    Math.round(Math.random() * 1000)
  .volatile()

  averageChangeCount: 0
  _total: 0
  average: Ember.computed ->
    @_total += @last
    @incrementProperty 'averageChangeCount'
    Math.round(@_total/@averageChangeCount)
  .property('last')
