EP.ObserverController = Ember.ObjectController.extend
  contentBinding: "EP.watchlist.quotes.firstObject"

  updateQuote: ->
    quote = @get('content')
    if quote
      quote.update()
    else
      WatchlistService.retrieve()
