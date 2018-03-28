const environment = require('./environment')



environment.loaders.set('eslint', {
  test: /\.(js|vue)$/,
  loader: 'eslint-loader',
  enforce: 'pre',
  options: {
    failOnWarning: false,
  }
})

const config = environment.toWebpackConfig()
config.devtool = 'sourcemap'
module.exports = config
