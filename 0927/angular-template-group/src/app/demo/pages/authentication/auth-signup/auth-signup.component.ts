import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-auth-signup',
  templateUrl: './auth-signup.component.html',
  styleUrls: ['./auth-signup.component.scss']
})
export class AuthSignupComponent implements OnInit {
  signupForm: FormGroup;
  isChecked: boolean;
  constructor(
    private fb : FormBuilder,
  ) { 
    this.signupForm = this.fb.group({
      username : new FormControl(),
      useremail : new FormControl(),
      userpass: new FormControl(),
      usersave: new FormControl()

    });
   }

  ngOnInit() {

  }
  signup(){
    console.log(this.signupForm.value);
  }

  checkSave(){
    document.getElementById('checkbox-fill-2').click();
    
  }
}
