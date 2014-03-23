# Routes

controllers = require '../app/controllers'

module.exports = (app)->
  app.get '/', (req, res)->
    res.success
      message: 'Welcome'

  app.get '/users', controllers.users.index