// another-greeting.service.ts
import { Injectable } from '@angular/core';

@Injectable()
export class AnotherGreetingService {
  sayHi() { return 'Hello!'; }
}