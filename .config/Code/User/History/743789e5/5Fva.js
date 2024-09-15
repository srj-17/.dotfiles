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
        if (this.#privateField in obj) return true; 
    }
}

