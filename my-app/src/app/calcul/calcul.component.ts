import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-calcul',
  templateUrl: './calcul.component.html',
  styleUrls: ['./calcul.component.css']
})
export class CalculComponent implements OnInit {

//  num1 = new FormControl('');
//  num2 = new FormControl('');

  constructor() { }

  calcula(cul:string){
    // switch(this.formula){
    //   case '+':this.result = this.num1 + this.num2;
    //   console.log(this.result);
    //     break;
    //   case '-':this.result = this.num1 - this.num2;
    //     break;
    //   case '*':this.result = this.num1 * this.num2;
    //     break;
    //   case '/':this.result = this.num1 / this.num2;
    //     break;
    //   case '%':this.result = this.num1 % this.num2;
    //     break;
    //   default:
    //     break;
    // }
    console.log(cul);
    // console.log(this.num1);
    // console.log(this.num2);
    
  }
  ngOnInit(): void {
  }

}
