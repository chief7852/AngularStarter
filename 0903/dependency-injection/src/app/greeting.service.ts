import { Injectable } from '@angular/core';

@Injectable()
export class GreetingService {

  constructor() { }
  sayHi(){ return 'Hi'; }
}
