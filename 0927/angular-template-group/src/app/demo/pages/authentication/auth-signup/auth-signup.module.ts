import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AuthSignupRoutingModule } from './auth-signup-routing.module';
import { AuthSignupComponent } from './auth-signup.component';
import { ModalModule } from 'src/app/theme/shared/components';

@NgModule({
  imports: [
    CommonModule,
    AuthSignupRoutingModule,
    ModalModule
  ],
  declarations: [AuthSignupComponent]
})
export class AuthSignupModule { }
