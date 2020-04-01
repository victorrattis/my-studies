const HtmlWebpackPlugin = require('html-webpack-plugin')

// mode: "development | production"
const mode = "development"

module.exports = [
  {
    mode: mode,
    entry: './src/index.jsx',
    target: 'electron-renderer',// TODO: Change to 'web' or 'electron-renderer' from argument value
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
    // This can be configureted in CLI.
    output: {
      path: __dirname + '/dist',
      filename: 'index.js'
    },
    // plugins: [
    //   new HtmlWebpackPlugin({
    //     template: './src/index.html'
    //   })
    // ],
    resolve: {
      extensions: ['.js', '.jsx'],
    }
  }
]
