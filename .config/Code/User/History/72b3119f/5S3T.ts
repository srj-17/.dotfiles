interface Point {
    x: number;
    y: number;
}

function logPoint (point: Point) {
    console.log(`${point.x}, ${point.y}`);
}

let point = {x: 10, y: 10, z: 'string'};

logPoint(point);