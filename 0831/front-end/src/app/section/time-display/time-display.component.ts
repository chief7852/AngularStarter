import { StyleCompiler } from '@angular/compiler';
import { Component, Input, OnInit, SimpleChange } from '@angular/core';

@Component({
  selector: 'app-time-display',
  templateUrl: './time-display.component.html',
  styleUrls: ['./time-display.component.css']
})
export class TimeDisplayComponent implements OnInit {

  @Input() inputData!: string;

  test = 1;

  constructor() {
    console.log(this.inputData)
    // setInterval(()=>{

    //   this.test ++;


    // }, 1000)

   }
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }

   ngOnChanges(changes: SimpleChange){
     console.log(changes);

  }
}
