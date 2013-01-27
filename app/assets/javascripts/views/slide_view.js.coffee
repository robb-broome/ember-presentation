EmberPresentation.SlideView = Ember.View.extend
  tagName: 'section'

_.each([
  'SimpleBinding',
  'CascadeBinding',
  'Observers',
  'ComputedProperties'
], (name) ->
  nameUnder = name.underscore()
  EP[name + 'SlideView'] = EP.SlideView.create
    elementId: nameUnder
    templateName: nameUnder + '_slide'
)
