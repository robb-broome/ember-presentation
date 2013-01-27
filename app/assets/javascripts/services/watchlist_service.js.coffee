window.WatchlistService =
  retrieve: ->
    return if EP.watchlist?

    wl = EP.Watchlist.create
      name: 'My Favorite Stocks'
      quotes: Ember.A(QuoteService.get('INTL', 'AAPL', 'MSFT', 'IBM'))

    EP.set 'watchlist', wl


