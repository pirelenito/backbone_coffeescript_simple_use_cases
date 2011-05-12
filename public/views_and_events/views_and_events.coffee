###
Views act like components
  * DOM element: @el
  * Bind DOM events
###


class Task extends Backbone.Model
  
  

  
class TaskEditView extends Backbone.View
  tagName: 'input'
  className: 'task'
  
  events:
    change: 'updateModel'
    click: 'logClick'
    
  initialize: ->
    @model.bind 'change', @render
    
  render: =>
    $(@el).val @model.get 'description'
    return @
    
  updateModel: ->
    @model.set description: $(@el).val()
    
  logClick: ->
    console.log 'click'
    
    

$ =>
  @task = new Task description: "Comprar macacos", completed: false
  
  @task.bind 'change:description', (task) ->
    console.log task.get 'description'
  
  $('body').append new TaskEditView(model: @task).render().el
  
  @task.set description: 'Comprar macacos ninjas'