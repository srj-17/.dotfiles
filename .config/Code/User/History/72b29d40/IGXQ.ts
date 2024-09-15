interface BackPack<Type> {
    add: (obj: Type) => void;
    get: () => Type;
}

declare const backpack: BackPack<string>;

const object = backpack.get();

backpack.add('hello');

console.log(`${object}, ${backpack.}`)