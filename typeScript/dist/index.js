"use strict";
function exampleFunc(data) {
    if (typeof data === 'string') {
        console.log(data + '1');
    }
    if (typeof data === 'number') {
        console.log(data + 1);
    }
}
exampleFunc(1);
exampleFunc('string');
