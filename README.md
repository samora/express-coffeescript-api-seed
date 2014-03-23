# Exress CoffeeScript API Seed

A simple yet powerful starting point for writing [Express](http://expressjs.com) JSON APIs with [CoffeeScript](http://coffeescript.org).

## Features

* MVC structure.
* Detect settings for different environments. See `./config/envs.coffee` and `./config/setup.coffee`.
* [Mongoose](http://mongoosejs.com) models to interface with MongoDB database.
* [Express Validator](https://github.com/ctavan/express-validator) middleware for validations. Bundled middleware adds `req.validate()` for [mapped errors](https://github.com/ctavan/express-validator#validation-errors).
* [JSender](https://github.com/samora/jsender) middleware for sending [JSend](http://labs.omniti.com/labs/jsend) responses.
* [CORS](https://github.com/troygoode/node-cors/) middleware.
* [Mocha](http://visionmedia.github.io/mocha/) for testing.

## Usage

Fairly easy to get started with. Tweak to your heart's content. Have an improvement?
Submit a pull request so we can all benefit.