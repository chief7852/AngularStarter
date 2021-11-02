// function filter<T>(
//   predicate: (value: T, index: number) => boolean, 
//   thisArg?: any
// ): MonoTypeOperatorFunction<T>;

import { range, pipe } from 'rxjs'
import { filter } from 'rxjs/operators'

range(1, 10)
  .pipe(filter(x => x % 5 === 0))
  .subscribe(x => console.log(x))


  