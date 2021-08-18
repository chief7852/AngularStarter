import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'my-app';

  currentCustomer = 'Maria';

  itemImageUrl = 'assets/imggg.jpg';

  fontSizePx = 16;
}

