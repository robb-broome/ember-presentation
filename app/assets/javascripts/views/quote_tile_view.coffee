EP.QuoteTileView = Ember.View.extend
  tagName: 'table'
  classNames: ['quote-tile'] 
  quote: null

  template: Ember.Handlebars.compile """
  <tbody>
    <tr>
      <th>Sym</th><td>{{view.quote.symbol}}</td>
    </tr>
    <tr>
      <th>Last</th>
      <td>{{view EP.QVV valueBinding="view.quote.lastRounded"}}</td>
    </tr>
    <tr>
      <th>Avg</th>
      <td>{{view EP.QVV valueBinding="view.quote.average"}}</td>
    </tr>
  </tbody>
  """
