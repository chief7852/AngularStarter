import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  constructor(
    private http: HttpClient,
    private router: Router,
    ) { }

  ngOnInit(): void {
  }
  
  onSignUp(signupForm:NgForm){
    console.log(signupForm.value)
    this.http.post('/api/post/signup',signupForm.value).subscribe((res:any)=>{
      //  res 값이 done이면 라우터를 사용해서 /경로로 이동
      if(res.result=='done'){
        // 함수 실행 시 라우터가 작동되는 코드로 / 경로로 이동
        this.router.navigate(['/'])
      }
    },
    err => {
      console.log(err);
      alert("에러");
    }
    )
    // console.log(signupForm.form.value)
  }
}
