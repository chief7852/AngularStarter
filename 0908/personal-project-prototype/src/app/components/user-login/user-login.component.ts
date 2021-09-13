import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Observable, observable, Subscriber } from 'rxjs';
@Component({
  selector: 'app-user-login',
  templateUrl: './user-login.component.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponent implements OnInit {
  allowId = 'asas';
  allowpass = 'asas'
  userPassword = '';
  userId = '';

  form = this.formBuilder.group({
    userId: '',
    userPassword: '',
  });
  constructor(
    private formBuilder: FormBuilder,
    private router : Router
  ) {



  }
  ngOnInit(): void {
    this.form.valueChanges.subscribe(newVlaue => {
      this.allowId = '';
      this.allowpass = '';
    })
  }

  onSubmit($event: any) {

    if (this.form.value.userId === 'asas' && this.form.value.userPassword === 'asas') {
      alert("로그인 성공");
      this.router.navigate(['/main']);
    }else{
      alert("해당정보없음");
    }

    this.form.reset();
  }





}
