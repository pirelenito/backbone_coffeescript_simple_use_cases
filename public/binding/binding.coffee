###
Great event support!
###

class Task extends Backbone.Model
  
  

$ ->
  task = new Task description: "Comprar macacos", completed: false
  
  task.bind 'change:description', (task) ->
    console.log task.get 'description'
  
  task.set description: "comprar macacos ninjas bind!"
