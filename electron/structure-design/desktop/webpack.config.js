const HtmlWebpackPlugin = require('html-webpack-plugin')
const glob = require('glob')

// mode: "development | production"
const mode = "development"

module.exports = [
  {
    mode: mode,
    entry: glob.sync('./src/main/**/*.js*'),
    target: 'electron-renderer',
    output: {
      path: __dirname + '/dist',
      filename: 'main.js'
    },
    resolve: {
      extensions: ['.js']
    }
  },
  {
    mode: mode,
    entry: glob.sync('./src/renderer/**/*.js*'),
    target: 'electron-renderer',
    output: {
      path: __dirname + '/dist',
      filename: 'renderer.js'
    },
    plugins: [
      new HtmlWebpackPlugin({
        template: './src/static/index.html'
      })
    ],
    resolve: {
      extensions: ['.js']
    }
  }
]
