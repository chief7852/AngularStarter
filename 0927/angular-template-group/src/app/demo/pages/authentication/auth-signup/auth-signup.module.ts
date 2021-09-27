import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AuthSignupRoutingModule } from './auth-signup-routing.module';
import { AuthSignupComponent } from './auth-signup.component';
import { ModalModule } from 'src/app/theme/shared/components';
import { FormControl, FormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';

@NgModule({
  imports: [
    CommonModule,
    AuthSignupRoutingModule,
    ModalModule,
    FormsModule,
    ReactiveFormsModule,
  ],
  declarations: [AuthSignupComponent]
})
export class AuthSignupModule { }
