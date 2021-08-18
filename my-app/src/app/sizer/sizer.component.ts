import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-sizer',
  templateUrl: './sizer.component.html',
  styleUrls: ['./sizer.component.css']
})
export class SizerComponent implements OnInit {
  @Input() size!: number | string;
  @Output() sizeChange = new EventEmitter<number>();

  dec() {this.resize(-1);}
  inc() {this.resize(+1);}
  constructor() { }
  
  resize(delta:number){
    this.size = Math.min(30, Math.max(10, + this.size + delta));
    this.sizeChange.emit(this.size);
  }

  ngOnInit(): void {
  }

}
