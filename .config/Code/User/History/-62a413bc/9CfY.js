const path = require("path");

module.exports = {
    mode: "development",
    // file path from here to entry point 
    entry: "./src/index.js",
    // an object containing information about output bundle
    output: {
        // name of output bundle
        filename: "main.js",
        // path to the output directory, if the path doesn't
        path: path.resolve(__dirname, "dist"),
        clean: true,
    },
};