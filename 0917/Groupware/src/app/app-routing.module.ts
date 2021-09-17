import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RqstDetailComponent } from './rqst-detail/rqst-detail.component';

const routes: Routes = [
  {path: '', component: RqstDetailComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
