function wrapInArray(obj: string | string[]) {
    if (typeof obj === "string") {
      return [obj];
    }
    return obj;
}

console.log(typeof wrapInArray('hello'))

console.log(typeof wrapInArray(['hello', 'world']))