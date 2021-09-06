// app.component.ts
import { Component, OnInit } from '@angular/core';
import { Observable, fromEvent } from 'rxjs';



@Component({
  selector: 'app-root',
  template: `
    <h3>Mouse Coordinates</h3>
    <h3>X: {{ posX }} Y: {{ posY }}</h3>
    <app-git></app-git>
  `,
  // providers: [{
  //   // 의존성 인스턴스의 타입(토큰, Token)
  //   provide: GreetingService,
  //   // 의존성 인스턴스를 생성할 클래스
  //   useClass: AnotherGreetingService
  // }]
})
export class AppComponent implements OnInit{
  mousePositon$ :Observable<Event> | undefined;
  posX: number = 0;
  posY: number = 0;

  ngOnInit() {
    // ② 옵저버블의 생성(DOM 이벤트를 옵저버블로 변환)
    this.mousePositon$ = fromEvent(document, 'mousemove');

    // ③ 옵저버는 옵저버블을 구독하고 옵저버블이 방출한 데이터를 전파받아 사용한다.
    this.mousePositon$.subscribe(
      (event: any) => {
        this.posX = event.clientX;
        this.posY = event.clientY;
      },
      error => console.log(error),
      () => console.log('complete!')
    );
  }
}