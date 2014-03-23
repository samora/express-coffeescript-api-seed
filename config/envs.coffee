# Environment Configurations

module.exports =
  all:
    name: 'Express CoffeeScript API'
    port: process.env.PORT or 80

  development:
    db: 'mongodb://localhost/express_coffeescript_api_development'

  production:
    db: process.env.MONGOLAB_URI or process.env.MONGOHQ_URI

  test:
    db: 'mongodb://localhost/express_coffeescript_api_test'