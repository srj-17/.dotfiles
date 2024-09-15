interface BackPack<Type> {
    add: (obj: Type) => void;
    get: () => Type;
}

