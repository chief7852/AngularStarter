import { Component, ElementRef, OnInit, QueryList, ViewChild } from '@angular/core';
import { SearchBoxComponent } from '../search-box/search-box.component';

@Component({
  selector: 'app-book-search-main',
  templateUrl: './book-search-main.component.html',
  styleUrls: ['./book-search-main.component.css']
})
export class BookSearchMainComponent implements OnInit {
  selectedValue: any = null;

  displayCategoryName :any = null;

  bookCategory = [
      {value: 'all', viewValue: '국내외도서'},
      {value: 'country', viewValue: '국내도서'},
      {value: 'foreign', viewValue: '국외도서'},
  ];
  searchTitle?:any = null;

  constructor() { }

  ngOnInit(): void {
  }

  changeValue(category: string): void{
    for(let element of this.bookCategory ) {
      if(element.value == category){
        this.displayCategoryName = element.viewValue;
      }
    }
  }

  changeTitleBar(searchInfo: { keyword: any; category: any; }) : void{
    this.searchTitle = `${searchInfo.keyword} ( ${searchInfo.category})`;
  }
  
  @ViewChild(SearchBoxComponent) searchComp?: SearchBoxComponent;
  @ViewChild(SearchBoxComponent) searchCompArr: QueryList<SearchBoxComponent> | any;

  clearCondition(): void{
    this.selectedValue = null;
    this.searchTitle = null;

    this.searchCompArr.toArray()[0]._bookCategory = null;
     this.searchCompArr.toArray()[0].keyword = null;


  }

  @ViewChild('resultStatus') resultToolbar!: ElementRef;

  changeDOM(): void {
    this.resultToolbar.nativeElement.onclick = function(){
      alert('DOM을 직접 제어할 수 있어요!!');
    }

    this.resultToolbar.nativeElement.innerHTML = "클릭해보세요!";

  }

}
