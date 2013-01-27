EmberPresentation.IndexView = Ember.View.extend
  classNames: 'slides'
  didInsertElement: ->
    Reveal.initialize
      controls: true
      progress: true
      history: true
      center: true
      transition: 'default'
    @$('pre code').each((i, e) ->
      $e = $(e)
      unless $e.attr('class')
        $e.addClass('coffeescript')
      hljs.highlightBlock(e, null, false)
    )
