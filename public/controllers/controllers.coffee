###
Collections
###

class Task extends Backbone.Model
  
  
  
class TaskList extends Backbone.Collection
  model: Task




class TaskEditView extends Backbone.View
  tagName: 'input'
  className: 'task'

  events:
    change: 'updateModel'

  initialize: ->
    @model.bind 'change', @render

  render: =>
    $(@el).val @model.get 'description'
    return @

  updateModel: ->
    @model.set description: $(@el).val()




class TaskController extends Backbone.Controller
  routes:
    'task/:id': 'task'
    
  task: (id)->
    task = list.get id: id
    $('body').html new TaskEditView(model: task).render().el




$ =>
  @list = new TaskList
  @list.add new Task id: 10, description: "Comprar macacos", completed: false
  @list.add new Task id: 20, description: "Comprar armas", completed: true
  
  new TaskController()
  Backbone.history.start()