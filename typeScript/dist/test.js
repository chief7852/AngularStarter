"use strict";
// function filter<T>(
//   predicate: (value: T, index: number) => boolean, 
//   thisArg?: any
// ): MonoTypeOperatorFunction<T>;
Object.defineProperty(exports, "__esModule", { value: true });
var rxjs_1 = require("rxjs");
var operators_1 = require("rxjs/operators");
(0, rxjs_1.range)(1, 10)
    .pipe((0, operators_1.filter)(function (x) { return x % 5 === 0; }))
    .subscribe(function (x) { return console.log(x); });
