import { Component } from '@angular/core';
import { Music } from './music';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  requests!: Music[];
  title: any;

  fnAddMusic(title: HTMLInputElement, artist:HTMLInputElement) : void{
    this.requests.push(new Music(title.value, artist.value, 0));

  }

  constructor(){
    this.requests = [
      {title : "신호등", artist: "이무진", votes: 10},
      {title : "느린심장박동", artist: "래원", votes: 9},
      {title : "say yes", artist: "활", votes: 8},
      {title : "어떻게 이별까지 사랑하겠어 널 사랑한거지", artist: "악동뮤지션", votes: 7},
    ]
  }
}
