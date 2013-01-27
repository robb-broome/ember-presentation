EP.ComponentView = Ember.View.extend
  controllerClass: null

  controller: Ember.computed ->
    return @_controller if @_controller

    @_controller = @controllerClass.create()

  context: Ember.computed ->
    @get('controller')
