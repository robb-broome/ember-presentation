EmberPresentation.CounterController = Ember.Controller.extend
  counter: 0

  incrementCounter: ->
    @incrementProperty 'counter'

  decrementCounter: ->
    @decrementProperty 'counter'
