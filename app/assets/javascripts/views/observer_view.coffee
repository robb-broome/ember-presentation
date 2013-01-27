EP.ObserverView = EP.ComponentView.extend
  controllerClass: EP.ObserverController
  template: Ember.Handlebars.compile """
<dl>
  <dt>Symbol</dt>
  <dd>{{symbol}}</dd>
  <dt>Last</dt>
  <dd>{{lastRounded}} &mdash; {{observerCount}}</dd>
</dl>
<button class='btn btn-large' {{action "updateQuote"}}>Update Quote</button>
"""
