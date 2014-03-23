express = require 'express'
responseTime = require 'response-time'
cors = require 'cors'
path = require 'path'
mongoose = require 'mongoose'
expressValidator = require 'express-validator'
jsender = require 'jsender'
uuid = require 'node-uuid'
middlewares = require './config/middlewares'
routes = require './config/routes'
settings = require('./config/setup')()

app = express()

# Connect to mongodb database
mongoose.connect settings.db, (err, res)->
  if err
    console.log "ERROR: Could not connect to database #{settings.db}."
    console.log err
    return

  console.log "SUCCESS: Connected to database #{settings.db}."

# Setup Middlewares
app.use responseTime()
app.use express.logger 'dev'
app.use express.compress()
app.use express.bodyParser()
app.use expressValidator()
app.use express.cookieParser uuid.v4()
app.use cors()
app.use jsender()
app.use middlewares.validate()

app.use app.router

if 'production' isnt app.get 'env'
  mongoose.set 'debug', true
  app.use express.errorHandler
    dumpExceptions: true
    showStack: true

routes app

app.listen settings.port, ()->
  console.log "#{settings.name} listening on port #{settings.port}."