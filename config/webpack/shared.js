// Note: You must restart bin/webpack-dev-server for changes to take effect

/* eslint global-require: 0 */
/* eslint import/no-dynamic-require: 0 */

const webpack = require("webpack");
const { basename, dirname, join, relative, resolve } = require("path");
const { sync } = require("glob");
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const ManifestPlugin = require("webpack-manifest-plugin");
const extname = require("path-complete-extname");
const { env, settings, output, loadersDir } = require("./configuration.js");

const extensionGlob = `**/*{${settings.extensions.join(",")}}*`;
const entryPath = join(settings.source_path, settings.source_entry_path);
const packPaths = sync(join(entryPath, extensionGlob));

module.exports = {
  entry: packPaths.reduce((map, entry) => {
    const localMap = map;
    const namespace = relative(join(entryPath), dirname(entry));
    localMap[join(namespace, basename(entry, extname(entry)))] = [
      "react-hot-loader/patch",
      resolve(entry)
    ];
    return localMap;
  }, {}),

  output: {
    filename: "[name].js",
    path: output.path,
    publicPath: output.publicPath
  },

  module: {
    rules: sync(join(loadersDir, "*.js")).map(loader => require(loader))
  },

  plugins: [
    new webpack.EnvironmentPlugin(JSON.parse(JSON.stringify(env))),
    new webpack.NamedModulesPlugin(),
    new ExtractTextPlugin(
      env.NODE_ENV === "production" ? "[name]-[hash].css" : "[name].css"
    ),
    new ManifestPlugin({
      publicPath: output.publicPath,
      writeToFileEmit: true
    }),
    // Creates a common vendor.js with all shared modules
    new webpack.optimize.CommonsChunkPlugin({
      name: "vendor",
      minChunks: module => {
        // this assumes your vendor imports exist in the node_modules directory
        return module.context && module.context.indexOf("node_modules") !== -1;
      }
    }),
    // Webpack code chunk - manifest.js
    new webpack.optimize.CommonsChunkPlugin({
      name: "manifest",
      minChunks: Infinity
    })
  ],

  resolve: {
    extensions: settings.extensions,
    modules: [resolve(settings.source_path), "node_modules"]
  },

  resolveLoader: {
    modules: ["node_modules"]
  }
};
