# npm
- npm doesn't stand for anything
- It's just a package manager to install the packages / dependencies for your current project
- npm is installed on the package.json file, which means that all the packages on that json file are installed
when you run npm install
- to individually install a package, you run `npm install <package-name>`
- to install a *scoped* package, you run ` npm install @scope/package-name`
    - scoped package means that two organizations can have same package names
    - you must have read access to install a private package

> you can test package installation by looking at `node-modules`, package is installed if there is a folder for it

- to install a specific version of package, you run `node install 