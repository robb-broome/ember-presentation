EP.QuoteValueController = Ember.Controller.extend
  direction: null
  value: null

  valueObserver: (->
    previous = @_currentValue
    @_currentValue = @get('value')

    direction =
      if previous && @_currentValue
        if previous == @_currentValue
          'same'
        else
          if @_currentValue > previous
            'up'
          else
            'down'
      else
        null
    @set('direction', direction)
  ).observes('value')
