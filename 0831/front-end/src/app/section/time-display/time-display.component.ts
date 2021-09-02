import { StyleCompiler } from '@angular/compiler';
import { Component, Input, OnInit, SimpleChange } from '@angular/core';

@Component({
  selector: 'app-time-display',
  templateUrl: './time-display.component.html',
  styleUrls: ['./time-display.component.css']
})
export class TimeDisplayComponent implements OnInit {

  @Input() inputData!: string;

  min: number = 0
  sec: number = 0
  ms: number = 0

  timeInterval: any;

  constructor() {
    console.log(this.inputData)
    // setInterval(()=>{

    //   this.test ++;


    // }, 1000)

  }
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }


  timeStart() {


    this.timeInterval = setInterval(() => {
      this.ms++;
    }, 10)
    // clearInterval();

  }

  timeStop() {

    clearInterval(this.timeInterval);

  }

  timeReset() {
    this.timeStop();
    this.ms = 0;
  }



  ngOnChanges(changes: SimpleChange) {

    for (let propName in changes) {

      if (propName == 'inputData') {
        switch (this.inputData) {
          case 'start':
            this.timeStart();
            break;
          case 'stop':
            this.timeStop();
            break;
          case 'reset':
            this.timeReset();
            break;
        }


      }
    }
  }
}
