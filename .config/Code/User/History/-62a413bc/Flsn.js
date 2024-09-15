const path = require("path");

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
        // cleans the path before
        clean: true,
    },
};