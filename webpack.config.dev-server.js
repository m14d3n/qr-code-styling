const { merge } = require('webpack-merge');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const commonConfig = require('./webpack.config.common.js');

module.exports = merge(commonConfig, {
  mode: 'development',
  devServer: {
    port: 7080
  },
  devtool: "inline-source-map",
  plugins: [
    new HtmlWebpackPlugin({
      template: './src/index.html',
      inject: 'head',
      scriptLoading: 'blocking',
    })
  ]
});
