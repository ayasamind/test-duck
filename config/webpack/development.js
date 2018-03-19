const environment = require('./environment')

environment.loaders.set('eslint', {
  test: /\.(js|vue)$/,
  loader: 'eslint-loader',
  enforce: 'pre',
  options: {
    failOnWarning: false,
  }
})

module.exports = environment.toWebpackConfig()
