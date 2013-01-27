EP.ComputedPropertyView = EP.ComponentView.extend
  controllerClass: EP.ComputedPropertyController
  template: Ember.Handlebars.compile """
<dl>
  <dt>Symbol</dt>
  <dd>{{symbol}}</dd>
  <dt>Open</dt>
  <dd>{{open}} &mdash; {{openChangeCount}}</dd>
  <dt>Uncached</dt>
  <dd>{{uncached}}</dd>
  <dt>Average</dt>
  <dd>{{average}} &mdash; {{averageChangeCount}}</dd>
</dl>
<button class='btn btn-large' {{action "updateQuote"}}>Update Quote</button>
"""
