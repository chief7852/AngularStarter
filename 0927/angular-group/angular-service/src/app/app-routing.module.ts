import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthSigninComponent } from './authentication/auth-signin/auth-signin.component';
import { AuthSignupComponent } from './authentication/auth-signup/auth-signup.component';

const routes: Routes = [
  {path: "", component:AuthSigninComponent},
  {path: "signup", component:AuthSignupComponent},
  {path: "signin", component:AuthSigninComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
