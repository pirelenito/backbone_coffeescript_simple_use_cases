###
Key - Value awesomeness!
###

class Task extends Backbone.Model
  
  

$ ->
  task = new Task description: "Comprar macacos", completed: false
  
  console.log task.get 'description'
  console.log task.get 'completed'
  
  task.set description: "comprar macacos ninjas"
  console.log task.get 'description'