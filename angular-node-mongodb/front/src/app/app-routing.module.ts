import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CalculComponent } from './calcul/calcul.component';
import { SigninComponent } from './signin/signin.component';
import { SignupComponent } from './signup/signup.component';
import { UserinfoComponent } from './userinfo/userinfo.component';

const routes: Routes = [
  { path : '' , component: SigninComponent},
  { path : 'signup' , component: SignupComponent},
  { path : 'userinfo' , component: UserinfoComponent}, 
  { path : 'calcul' , component: CalculComponent} 
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
