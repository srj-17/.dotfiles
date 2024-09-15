const HtmlWebpackPlugin = require("html-webpack-plugin");
const path = require("path");
const { webpack } = require("webpack");

module.exports = {
    devtool: "eval-source-map",
    devServer: {
        watchFiles: ["./src/template.html"],
    },
    
};