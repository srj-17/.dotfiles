function wrapInArray(obj: string | string[]) {
    if (typeof obj === "string") {
      return [obj];
    }
    return obj;
}

console.log(Array.isArray(wrapInArray('hello')))

console.log(Array.isArray(wrapInArray(['hello', 'world'])))