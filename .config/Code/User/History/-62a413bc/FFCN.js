const path = require("path");

module.exports = {
    mode: "development",
    // file path from here to entry point 
    entry: "./src/index.js",
    // an object containing information about output bundle
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, "dist"),
        clean: true,
    },
};