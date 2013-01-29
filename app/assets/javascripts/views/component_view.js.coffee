EP.ComponentView = Ember.View.extend
  controllerClass: null

  controller: Ember.computed ->
    @controllerClass.create()

  context: Ember.computed ->
    @get('controller')
