import { Component, ViewEncapsulation, ViewChild } from '@angular/core';
import { ILoadedEventArgs, IZoomCompleteEventArgs, ChartComponent, ChartTheme, ISeriesRenderEventArgs } from '@syncfusion/ej2-angular-charts';
import { Browser } from '@syncfusion/ej2-base';

/**
 * Sample for Range Area Series
 */
@Component({
  selector: 'control-content',
  templateUrl: 'range-area.html',
  styleUrls: ['chart.style.css'],
  encapsulation: ViewEncapsulation.None
})

export class RangeAreaComponent {
  //Initializing Primary X Axis
  public primaryXAxis: Object = {
    valueType: 'DateTime',
    edgeLabelPlacement: 'Shift',
    majorGridLines: { width: 0 }
  };
  //Initializing Primary Y Axis
  public primaryYAxis: Object = {
    labelFormat: '{value}˚C',
    lineStyle: { width: 0 },
    majorTickLines: { width: 0 }
  };
  public marker :Object = {
    visible :false
  }
  public legend: Object = {
    visible: false
  }

  public zoomSettings: Object = {
    enableSelectionZooming: true,
    mode: 'X'
  };
  public title: string = 'Temperature Variation';
  public tooltip: Object = {
    enable: false
  };
  public chartArea: Object = {
    border: {
      width: 0
    }
  };
  public width: string = Browser.isDevice ? '100%' : '80%';

  public opacity: number = 0.4;
  public border: Object = { width: 2 };
   // custom code start
  public load(args: ILoadedEventArgs): void {
    let selectedTheme: string = location.hash.split('/')[1];
    selectedTheme = selectedTheme ? selectedTheme : 'Material';
    args.chart.theme = <ChartTheme>(selectedTheme.charAt(0).toUpperCase() + selectedTheme.slice(1)).replace(/-dark/i, "Dark");
  };
   // custom code end
  public data: Object[] = this.getData();
  public getData(): Object[] {
    let pointCollection: Object[] = [];
    let value: number = 35;
    let point: Object;

    for (let i: number = 1; i < 360; i++) {
      if (Math.random() > .5) {
        value += Math.random();
      } else {
        value -= Math.random();
      }
      point = {
        x: new Date(2015, 0, i),
        high: value, low: value - 10
      };
      pointCollection.push(point);
    }
    return pointCollection;
  }
  public seriesRender(args: ISeriesRenderEventArgs): void {
    var areathemes = ['bootstrap5', 'bootstrap5dark', 'tailwind', 'tailwinddark', 'material', 'materialdark', 'bootstrap4', 'bootstrap', 'bootstrapdark', 'fabric', 'fabricdark', 'highcontrast'];
    var borderColor = ['#262E0B', '#5ECB9B', '#5A61F6', '#8B5CF6', '#00bdae', '#9ECB08', '#a16ee5', '#a16ee5', '#a16ee5', '#4472c4', '#4472c4', '#79ECE4'];
    args.series.border.color = borderColor[areathemes.indexOf(args.series.chart.theme.toLowerCase())];
  };
  constructor() {
    //code
  };

}