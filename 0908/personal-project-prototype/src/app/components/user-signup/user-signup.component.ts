import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user-signup',
  templateUrl: './user-signup.component.html',
  styleUrls: ['./user-signup.component.css']
})
export class UserSignupComponent implements OnInit {
  User: any = ['Super Admin', 'Author', 'Reader'];
  constructor() { }

  ngOnInit(): void {
  }

}
