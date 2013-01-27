window.QuoteService = (->
  cache = {}

  findOrCreate = (symbol) ->
    quote = cache[symbol]
    return quote if quote?

    quote = EP.Quote.create
      symbol: symbol
    cache[symbol] = quote
    quote

  {
    get: ->
      if arguments.length == 1
        findOrCreate(arguments[0])
      else
        quotes = []
        for symbol in arguments
          quotes.push(findOrCreate(symbol))
        quotes

    update: ->
      _.each cache, (quote, symbol) ->
        quote.update()
  }
)()
