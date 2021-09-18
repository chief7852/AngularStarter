import { DirectiveResolver } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-rqst-detail',
  templateUrl: './rqst-detail.component.html',
  styleUrls: ['./rqst-detail.component.css']
})
export class RqstDetailComponent implements OnInit {

  constructor(
    private fb: FormBuilder,
  ) { }

  ngOnInit(): void {
        this.form = this.fb.group({
      REG_DT: [''],
      FROM_DT: ['2020-01-01'],
      TO_DT: ['2020-01-03'],
      CLS: [''],
      AUDIT_STAT: [''],
      SBJT: [''],
    });
  }


 onClick(){
   DirectiveResolver be  = new Component;

   ang
 }

}
