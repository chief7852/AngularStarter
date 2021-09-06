import { Injectable } from '@angular/core';

@Injectable(
// @Injectable({
  // providedIn: 'root'
// })
)
export class GreetingService {

  constructor() { }
  sayHi(){ return 'Hi'; }
}
