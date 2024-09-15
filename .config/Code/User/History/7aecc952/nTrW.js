// for every array element
    // if the index of the first occurance of the element == index of the element, the element is unique
    // (upto this point)
    // if yes, not unique
    // else: unique=> add to the new array
    
arr = [1, 2, 3, 5, 5, 4, 5, 6]

uarr = arr.filter((element) => arr.indexOf(element) === index);

console.log(uarr)