EP.QuoteValueLiteView = Ember.View.extend
  tagName: 'span'
  classNameBindings: ['direction'] 

  direction: null
  value: ((key, value)->
    if arguments.length == 1
      @_currentValue
    else
      previous = @_currentValue
      @_currentValue = value

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
      value
  ).property()

  template: Ember.Handlebars.compile "{{view.value}}"
