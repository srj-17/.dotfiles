const HtmlWebpackPlugin = require("html-webpack-plugin");
const path = require("path");
const { webpack } = require("webpack");

module.exports = {
    mode: "development",
    entry: "./src/index.js",
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist"),
        clean: true,
    },
    webpack
    plugins: [
        new HtmlWebpackPlugin({
        template: "./src/template.html",
        }),
    ],
    module: {
        rules: [
            {
                test: /\.css$/i,
                use: ["style-loader", "css-loader"],
            }
        ]
    }
};