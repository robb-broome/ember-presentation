EmberPresentation.SlideView = Ember.View.extend
  tagName: 'section'
  didInsertElement: ->
#    @$('pre code').each((i, e) ->
#      hljs.highlightBlock(e, null, false)
#    )

_.each([
  'SimpleBinding',
  'CascadeBinding',
  'Observers'
], (name) ->
  nameUnder = name.underscore()
  EP[name + 'SlideView'] = EP.SlideView.create
    elementId: nameUnder
    templateName: nameUnder + '_slide'
)
