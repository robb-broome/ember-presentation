EmberPresentation.WatchlistView = EP.ComponentView.extend
  controllerClass: EP.WatchlistController
  template: Ember.Handlebars.compile """
    {{#if watchlist}}
      <h4>{{watchlist.name}}</h4>
      <ul>
        {{#each watchlist.quotes}}
          <li>{{symbol}} &mdash; {{last}}</li>
        {{/each}}
      </ul>
      <br/>
      <button class="btn" {{action "updateQuotes"}}>Update Quotes</button>
    {{else}}
      <p>Retrieve the watchlist!</p>
      <button class="btn" {{action "retrieve"}}>Retrieve</button>
    {{/if}}
  """
