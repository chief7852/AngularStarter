// 이 서비스는 Angular HTTPClient를 사용 하여 HTTP 요청을 보냅니다.
// 기능에 CRUD 연산과 파인더 메서드가 포함되어 있음을 알 수 있습니다.


import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Tutorial } from '../models/tutorial.model';

const baseUrl = 'http://localhost:8080/api/tutorials';

@Injectable({
  providedIn: 'root'
})
export class TutorialService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Tutorial[]>{
    return this.http.get<Tutorial[]>(baseUrl);
  }

  get(id:any): Observable<Tutorial>{
    return this.http.get(`${baseUrl}/${id}`);
  }

  create(data: any): Observable<any>{
    return this.http.post(baseUrl, data);
  }

  update(id: any, data: any): Observable<any>{
    return this.http.put(`$baseUrl}/${id}`, data);
  }

  deleteAll(): Observable<any>{
    return this.http.delete(baseUrl);
  }

  findByTitle(title: any): Observable<Tutorial[]>{
    return this.http.get<Tutorial[]>(`${baseUrl}?title=${title}`);
  }

}
