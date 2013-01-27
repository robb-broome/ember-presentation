EmberPresentation.IndexController = Ember.Controller.extend
  indexUpdateQuotes: ->
    if EP.watchlist?
      QuoteService.update()
    else
      WatchlistService.retrieve()
