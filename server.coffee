###
Simple server to use coffeescript embedded compiler in the browser
without throwing XMLHttpRequest Exception
###

http = require 'http'
nodeStatic = require 'node-static'

server = http.createServer (request,response) ->
  fileServer = new nodeStatic.Server './public', 
    cache: false
    
  request.addListener 'end', () ->
    fileServer.serve request, response
  
server.listen 4000