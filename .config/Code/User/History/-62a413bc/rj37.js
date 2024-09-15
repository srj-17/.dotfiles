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
        // this rule tells the webpack that if it encounters an imported file with .css extension, 
        // it should use listed loaders to process that css file
        rules: [
            {
                test: /\.css$/i,
                // remember that the order or loaders is important
                // webpack will run the loaders from the end, so when it encounters the 'css-loader' first,
                // it will read the css file to a string with that.
                // Thereafter, when it encounters 'style-loader', the 'style-loader' injects the javascript
                // that applies the css in that string to the page.
                use: ['style-loader', 'css-loader'],
            },
            {
                test: /\.html$/i,
                loader: "html-loader",
            },
            {
                test: /\.(png|svg|jpg|jpeg|gif)$/i,
                type: "asset/resource",                  
            }
        ],
    },
};

// chatgpt: modules vs plugins
    // Modules (and their associated loaders) are mainly concerned with transforming and processing individual 
    // files (like transpiling JS or loading CSS).
    // Plugins are used to extend Webpack's capabilities and perform more complex, global tasks that affect 
    // the entire build process.