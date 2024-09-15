# Export from - for tunneling
- `export {..} from 'sth.js'` used, in many cases, mostly for tunneling modules from different modules to one module which can later be imported by the top level module
- that is
- we have one module, that just acts as tunnel, and nothing more (let's say this is parentModule)
- we only import from that module in the `top level module` that we include in the index.html
- we use `export from` syntax to pass on the things exported from all the other modules to the `topLevelModule.js`

If you still don't understand, see the example, you will

> export from is basically, import from and export combined to one
> also, export from doesn't support default exports