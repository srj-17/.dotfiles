interface Point {
    x: number;
    y: number;
}

function logPoint (point: Point) {
    console.log(`${point.x}, ${point.y}`);
}

let point = {x: 10, y: 10, z: 'string'};

logPoint(point);

class VirtualPoint {
    x: number;
    y: number;
   
    constructor(x: number, y: number) {
      this.x = x;
      this.y = y;
    }
  }
   
  const newVPoint = new VirtualPoint(13, 56);
  logPoint(newVPoint); // logs "13, 56"