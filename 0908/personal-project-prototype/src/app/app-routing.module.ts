import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ErrorpageComponent } from './components/errorpage/errorpage.component';
import { MainpageComponent } from './components/mainpage/mainpage.component';
import { UserLoginComponent } from './components/user-login/user-login.component';
import { UserSignupComponent } from './components/user-signup/user-signup.component';

const routes: Routes = [
  { path: '', component:MainpageComponent},
  { path: 'login', component: UserLoginComponent},
  { path: 'signup', component: UserSignupComponent},
  { path: 'main', component: MainpageComponent},
  { path: '**', component:ErrorpageComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
