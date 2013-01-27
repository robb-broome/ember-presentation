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
      hljs.highlightBlock(e, null, false)
    )
