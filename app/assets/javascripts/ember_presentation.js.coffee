#= require ./store
#= require_tree ./models
#= require_tree ./services
#= require ./controllers/observer_controller
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require ./router
#= require_tree ./routes
#= require_self

# Create SlideViews programmatically
_.each([
  'SimpleBinding',
  'CascadeBinding',
  'Observers',
  'ComputedProperties',
  'Components',
  'ComposingComponents',
  'Gotchas'
], (name) ->
  EP[name + 'SlideView'] = EP.SlideView.create
    elementId: name.dasherize() # so reveal doesn't show ember#### 
    templateName: name.underscore() + '_slide' # by convention
)
