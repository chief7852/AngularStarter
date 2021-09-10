import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators } from '@angular/forms';
import { observable } from 'rxjs';
@Component({
  selector: 'app-user-login',
  templateUrl: './user-login.component.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponent implements OnInit {

  
  form = this.formBuilder.group({
    userId: '',
    userPassword: '',
  });
  constructor(
    private formBuilder : FormBuilder
  ){


    
  }
  ngOnInit(): void {
  }

  onSubmit($event: any) {
    console.log(this.form.value.userId);
    console.log(this.form.value.userPassword);

  }
}
