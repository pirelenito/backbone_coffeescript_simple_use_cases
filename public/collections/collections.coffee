###
Collections
###

class Task extends Backbone.Model
  
  
  
class TaskList extends Backbone.Collection
  model: Task



$ ->
  list = new TaskList
  list.add new Task id: 10, description: "Comprar macacos", completed: false
  list.add new Task id: 20, description: "Comprar armas", completed: true
  
  console.log list.get id: 20