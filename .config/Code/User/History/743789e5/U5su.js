class Classwprivate {
    #privateFiled = 20;
    #uninitializedPrivateField;

    #privateMethod() {

    }

    static #privateStaticField;
    static #privateStaticFieldWithInitializer = 20;

    static #privatestaticmethod (obj){
    }

    getPrivate() {
        if (this.#privateStaticField in obj) return true; 
    }
}

