interface BackPack<Type> {
    add: (obj: Type) => void;
    get: () => Type;
}

declare const backpack: BackPack<string>;

