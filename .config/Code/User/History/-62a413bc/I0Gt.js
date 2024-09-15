const path = require("path");
// we want our webpack configuration to have access to the html plugin
const HtmlWebpackPlugin = require("html-webpack-plugin");

// this is a `configuration object` you could say
module.exports = {
    mode: "development",
    // file path from here to entry point 
    entry: "./src/index.js",
    // an object containing information about output bundle
    output: {
        // name of output bundle
        filename: "main.js",
        // path to the output directory, if the directory doesn't exist, webpack will create that for us
        path: path.resolve(__dirname, "dist"),
        // emptys the output directory every time before bundling files into it
        // helps us keep dist clean, so only the files produced from most recent bundling
        clean: true,
    },
    plugins: [
        // adding htmlwebpackplugin as a plugin to the configuration object
        // inside the constructor call, we're passing any options 
        new HtmlWebpackPlugin({
            // for now, only the template option
            template: "./src/templates.html",
        }),
    ],
    module: {
        // this rule tells the webpack that if it encounters a 
        rules: [
            {
                test: /\.css$/i,
                use: ['style-loader', 'css-loader'],
            }
        ],
    },
};