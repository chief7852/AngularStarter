import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-section',
  templateUrl: './section.component.html',
  styleUrls: ['./section.component.css']
})
export class SectionComponent implements OnInit {

  present = 'welcome';


  commandText:any;
  constructor() { }


  stratTime($event: any){

    this.present = $event;
    
  }
  ngOnInit(): void {
  }

}
