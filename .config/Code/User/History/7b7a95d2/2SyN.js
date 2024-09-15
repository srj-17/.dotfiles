let y = (x) => 3*x + 5;

let z = (x, y) => {
  return (x + y);  
};

// j

console.log(`the result is: ${y(5)}`);
console.log(`another result is ${z(5 , 2)}`);