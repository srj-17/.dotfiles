function Car(brand) {
    this.brand = brand;
    let speed = 2;
    function moveCar() {
        return `Move the ${this.brand} with ${speed} speed`;
    }
};

Car.prototype.mvCar = function() {
    return `Move the ${this.brand} car with ${speed} speed`;
}