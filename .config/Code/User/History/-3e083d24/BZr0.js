function Car(brand) {
    this.brand = brand;
    let speed = 2;
    this.moveCar = function() {
        return `Move the ${this.brand} with ${speed} speed`;
    }
};

Car.prototype.mvCar = function() {
    return `Move the ${this.brand} car with ${speed} speed`;
}

ca = new Car('ducati');

console.log(ca.moveCar());

console.log(ca.mvCar());