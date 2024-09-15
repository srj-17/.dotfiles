function wrapInArray(obj: string | string[]) {
    if (typeof obj === "string") {
        return 'hello, i was passed to converted to array';
    //   return [obj];
    }
    return 'hello, i\m an array already';
}

console.log(wrapInArray('hello'))

console.log(wrapInArray(['hello', 'world']))

export {}