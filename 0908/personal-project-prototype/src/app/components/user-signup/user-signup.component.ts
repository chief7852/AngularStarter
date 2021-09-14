import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user-signup',
  templateUrl: './user-signup.component.html',
  styleUrls: ['./user-signup.component.css']
})
export class UserSignupComponent implements OnInit {
  User: any = ['헬퍼', '학생', '기타'];
  constructor() { }

  ngOnInit(): void {
  }

}
