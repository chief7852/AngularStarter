import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-calcul',
  templateUrl: './calcul.component.html',
  styleUrls: ['./calcul.component.css']
})
export class CalculComponent implements OnInit {

  @Input() num1!: number ;
  @Input() num2!: number ;
  @Input() formula! : String;
  @Output() result! : number | String;

  recalcul() {this.calcula();}

  constructor() { }

  calcula(){
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
    console.log(this.num1)
    
  }
  ngOnInit(): void {
  }

}
