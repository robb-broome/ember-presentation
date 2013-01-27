EP.QVV = EP.QuoteValueView = EP.ComponentView.extend
  tagName: 'span'
  classNameBindings: ['direction'] 
  controllerClass: EP.QuoteValueController

  directionBinding: 'controller.direction'
  value: ((key, value) ->
    if arguments.length == 1
      @get('controller.value')
    else
      @set('controller.value', value)
  ).property()

  template: Ember.Handlebars.compile "{{value}}"
