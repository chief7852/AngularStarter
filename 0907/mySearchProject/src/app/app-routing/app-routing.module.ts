import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from '../pages/home/home.component';
import { BookSearchMainComponent } from '../book-search/book-search-main/book-search-main.component';
import { MovieSerachMainComponent } from '../movie-search/movie-serach-main/movie-serach-main.component';
import { RouterModule, Routes } from '@angular/router';

// 라우터 생성(apth 표시할때 Root path에대한 '/'는 제외다.)
const routers: Routes = [
  { path : '', component : HomeComponent },
  { path : 'book', component : BookSearchMainComponent },
  { path : 'movie', component : MovieSerachMainComponent },
]

@NgModule({
  imports: [
    CommonModule
    ,RouterModule.forRoot(routers)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
