/**
 * Zoom Marker Sample
 */
import { Component, ViewEncapsulation, Inject, ViewChild } from '@angular/core';
import { MapsTheme, Maps, Marker, MapsTooltip, ILoadEventArgs, Zoom } from '@syncfusion/ej2-angular-maps';
import { southAmericaCountryCapitals } from './marker-location';
import { CheckBox, ChangeEventArgs as CheckBoxChangeEvents } from '@syncfusion/ej2-buttons';
import { EmitType } from '@syncfusion/ej2-base';
Maps.Inject(Marker, MapsTooltip, Zoom);
declare var require: any;
let worlMap: object[] = require('./world-map.json');
let population: object[] = require('./southamerica-country-capitals.json');
@Component({
  selector: 'control-content',
  templateUrl: 'programmatic-zoom.html',
  encapsulation: ViewEncapsulation.None
})
export class MapsProgrammaticZoomComponent {
  @ViewChild('maps')
  public maps: Maps;
  // custom code start
  public load = (args: ILoadEventArgs) => {
    let theme: string = location.hash.split('/')[1];
    theme = theme ? theme : 'Material';
    args.maps.theme = <MapsTheme>(theme.charAt(0).toUpperCase() +
    theme.slice(1)).replace(/-dark/i, 'Dark').replace(/contrast/i,  'Contrast');
  }
  // custom code end
  public zoomSettings: object = {
    enable: true,
    mouseWheelZoom: false,
    pinchZooming: false
  };
  public titleSettings: object = {
    text: 'Capitals of South American countries',
    titleStyle: { size: '16px' }
  };
  public layers: object[] = [{
    shapeData: worlMap,
    dataSource: population,
    shapeSettings: {
      fill: '#C3E6ED',
      border: {
        color: 'black',
        width: 0.3
      }
    },
    markerSettings: [{
      dataSource: southAmericaCountryCapitals,
      visible: true,
      animationDuration: 0,
      height: 20,
      width: 20,
      shape: 'Image',
      imageUrl: './assets/maps/images/ballon.png',
      tooltipSettings: {
        format:  '<b>Capital</b> : ${name}<br><b>Country</b> : ${Country}',
        visible: true,
        valuePath: 'name',
      }
    }]
  }];
  ngAfterViewInit(): void {
    let zoom: EmitType<CheckBoxChangeEvents>;
    let zoomCheckBox: CheckBox = new CheckBox(
      {
        change: zoom, checked: false
      },
      '#zoom');
    zoomCheckBox.change = zoom = (e: CheckBoxChangeEvents) => {
      this.maps.zoomSettings.shouldZoomInitially = e.checked;
    };
  }
  constructor(@Inject('sourceFiles') private sourceFiles: any) {
    sourceFiles.files = ['southamerica-country-capitals.json', 'world-map.json'];
  };
}
