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
        Abstract subclasses or mix-ins are templates for classes. A class can only have a single superclass, so multiple inheritance from tooling classes, for example, is not possible. The functionality must be provided by the superclass.     
    }
}

