
const HtmlWebpackPlugin = require('html-webpack-plugin')

// mode: "development | production"
const mode = "development"

module.exports = [
  {
    mode: mode,
    entry: './src/main.js',
    target: 'electron-main',
    module: {
      rules: [{
      }]
    },
    output: {
      path: __dirname + '/build',
      filename: 'main.js'
    },
    resolve: {
      extensions: ['.js'],
    }
  },
  {
    mode: mode,
    entry: './src/react.jsx',
    target: 'electron-renderer',
    module: { 
      rules: [
        {
          test: /\.(js|jsx)$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader"
          }
        }
      ]
    },
    output: {
      path: __dirname + '/build/dist',
      filename: 'index.js'
    },
    plugins: [
      new HtmlWebpackPlugin({
        template: './src/index.html'
      })
    ],
    resolve: {
      extensions: ['.js', '.jsx'],
    }
  }
]
