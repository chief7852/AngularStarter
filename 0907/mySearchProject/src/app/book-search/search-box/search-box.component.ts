import { Optional } from '@angular/core';
import { Component, Input, OnInit, Output ,EventEmitter} from '@angular/core';
import { HttpSupportService } from '../http-support.service';
import { JsonConfig, JSON_DATA_CONFIG } from './json-config';

@Component({
  selector: 'app-search-box',
  templateUrl: './search-box.component.html',
  styleUrls: ['./search-box.component.css'],
  providers: [ { provide: HttpSupportService, useClass: HttpSupportService }, { provide: JsonConfig, useValue: JSON_DATA_CONFIG } ]

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

  keyword = null;


  constructor(private httpSupportService: HttpSupportService,
    @Optional() private jsonConfig: JsonConfig) { }

  ngOnInit(): void {
  }

  setKeyword(keyword: any): void{
    this.keyword = keyword;
    this.searchEvent.emit({
      keyword : `${this.keyword}`,
      category: `${this._bookCategory?.replace('category: ', '')}`
    });

    this.httpSupportService.getJsonData(this.jsonConfig.url, this.jsonConfig.name);
  }

  inputChange(): void{

  }
}
