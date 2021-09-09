import { Component, Input, OnInit, Output ,EventEmitter} from '@angular/core';

@Component({
  selector: 'app-search-box',
  templateUrl: './search-box.component.html',
  styleUrls: ['./search-box.component.css']
})
export class SearchBoxComponent implements OnInit {

    // @Input() bookCategory:string | undefined;
    // @Input('bookCategory') mySelected:string;
    // keyword = '';
    _bookCategory: any ;

    @Input()

  set bookCategory(value: string) {
    if (value != null) { // 추가적인 작업이 들어올 수 있습니다. 
      this._bookCategory = 'category: ' + value;
    } else {
      this._bookCategory = value;
    }
  }

  @Output() searchEvent = new EventEmitter();

  keyword = '';


  constructor() { }

  ngOnInit(): void {
  }

  setKeyword(keyword: string): void{
    this.keyword = keyword;
    this.searchEvent.emit({
      keyword : `${this.keyword}`,
      category: `${this._bookCategory?.replace('category: ', '')}`
    });
  }

  inputChange(): void{

  }
}
