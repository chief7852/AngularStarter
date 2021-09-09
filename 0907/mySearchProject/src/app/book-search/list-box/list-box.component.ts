import { HttpClient } from '@angular/common/http';
import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';

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

@Component({
  selector: 'app-list-box',
  templateUrl: './list-box.component.html',
  styleUrls: ['./list-box.component.css']
})
export class ListBoxComponent implements OnInit {
  displayedColumns = ['bisbn', 'btitle', 'bauthor', 'bprice']; 
  dataSource: any;

  books!: IBook[];
  @ViewChild(MatPaginator) paginator : MatPaginator | undefined;

  constructor(private http: HttpClient) { 
    this.http.get<IBook[]>('assets/data/book.json')
      .subscribe(res => {
        this.books = res;
        this.dataSource = new MatTableDataSource<IBook>(this.books);
        this.dataSource.paginator = this.paginator;
      });
  }

  ngOnInit(): void {
  }

}
