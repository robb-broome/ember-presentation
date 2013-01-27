EmberPresentation.CounterView = EP.ComponentView.extend
  controllerClass: EP.CounterController
  template: Ember.Handlebars.compile """
<button class='btn btn-large' {{action incrementCounter}}>Plus</button>
<button class='btn btn-large btn-inverse' {{action decrementCounter}}>Minus</button>
Counter: {{counter}}
"""
