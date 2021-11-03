// function filter<T>(
//   predicate: (value: T, index: number) => boolean, 
//   thisArg?: any
// ): MonoTypeOperatorFunction<T>;

import { range, pipe } from 'rxjs'
import { filter, first } from 'rxjs/operators'

['a','b','c'].flatMap(function(e) {
    return [e, e+ 'x', e+ 'y',  e+ 'z'  ];
});
//['a', 'ax', 'ay', 'az', 'b', 'bx', 'by', 'bz', 'c', 'cx', 'cy', 'cz']