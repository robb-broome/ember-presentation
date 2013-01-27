EmberPresentation.WatchlistController = Ember.Controller.extend
  watchlist: null
  watchlistBinding: "EP.watchlist"

  retrieve: ->
    WatchlistService.retrieve()

  updateQuotes: ->
    QuoteService.update()
