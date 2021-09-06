import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AnotherGreetingService } from './another.service';

import { AppComponent } from './app.component';
import { GreetingService } from './greeting.service';
import { ObservableComponent } from './observable/observable.component';
import { ObservableEventHttpComponent } from './observable-event-http/observable-event-http.component';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  declarations: [ AppComponent, ObservableComponent, ObservableEventHttpComponent ],
  imports: [ 
    BrowserModule ,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [{
    // 의존성 인스턴스의 타입(토큰, Token)
    provide: GreetingService,
    // 의존성 인스턴스를 생성할 클래스
    useClass: AnotherGreetingService
  }],
  bootstrap: [ AppComponent ]
})
export class AppModule { }