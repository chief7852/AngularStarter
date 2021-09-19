import { Component, OnInit } from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';


@Component({
  selector: 'app-rqst-detail',
  templateUrl: './rqst-detail.component.html',
  styleUrls: ['./rqst-detail.component.css']
})
export class RqstDetailComponent implements OnInit {

  range = new FormGroup({
    start: new FormControl(),
    end: new FormControl()
  });
  
  constructor(
  ) { }

  ngOnInit(): void {

  }



}
