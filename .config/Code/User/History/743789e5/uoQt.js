class Classwprivate {
    #privateFiled = 20;
    #uninitializedPrivateField;

    #privateMethod() {

    }

    static #privateStaticField;
    static #privateStaticFieldWithInitializer = 20;

    static #doescontainprivatestaticmethod (obj){
        if (this.#privatestaticfield in obj) return true; 
    }

    getPrivate() {
             
    }
}

