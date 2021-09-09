import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
interface IBook { 
  bauthor: string;
  bdate: string;
  btranslator: string;
  bpublisher: string;
  btitle: string;
  bprice: number;
  bisbn: string;
  bimgurl: string;
}

@Injectable({
  providedIn: 'root'
})
export class HttpSupportService {
  books!: IBook[];


  constructor(private http: HttpClient) { }


  getJsonData(url:string, name:string){
    this.http.get<IBook[]>('assets/data/book.json')
      .subscribe(res => {
        this.books = res;
          console.log(this.books);
      })
  }
}
