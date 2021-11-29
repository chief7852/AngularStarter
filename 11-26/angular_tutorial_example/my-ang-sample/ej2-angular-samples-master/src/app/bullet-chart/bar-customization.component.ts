import { Component, ViewEncapsulation, ViewChild } from '@angular/core';
import { Browser } from '@syncfusion/ej2-base';
import { AnimationModel, BulletChartComponent, TextPosition  } from '@syncfusion/ej2-angular-charts';
import { ChangeEventArgs } from '@syncfusion/ej2-angular-dropdowns';
import { BulletTooltipSettingsModel, FeatureType, IBulletLoadedEventArgs, ChartTheme } from '@syncfusion/ej2-charts';
import { ColorPickerEventArgs, SliderChangeEventArgs, TooltipDataModel  } from '@syncfusion/ej2-inputs';
/**
 * RTl sample
 */
@Component({
    selector: 'control-content',
    templateUrl: 'bar-customization.html',
    encapsulation: ViewEncapsulation.None
})

export class BulletChartBarCustomizationComponent {
    @ViewChild('bullet')
    public bulletChart: BulletChartComponent;

    public bulletTitle: string = 'New Customers';
    public width: string = Browser.isDevice ? '100%' : '80%';
    public tooltip: BulletTooltipSettingsModel = { enable: true };
    public animation: AnimationModel = { enable: false };
    public sliderTooltip: TooltipDataModel = { isVisible: true };

    public minimum1: number = 0;
    public maximum1: number = 300;
    public interval1: number = 50;
    public data1: Object[] =  [{ value: 270, target: 250 }];

    public dropdata: string[] = ['Rect', 'Dot'];

    public featureType = (args: ChangeEventArgs) => {
        this.bulletChart.type = args.value as FeatureType;
        this.bulletChart.refresh();
    }

    public valueColor = (args: ColorPickerEventArgs) => {
        this.bulletChart.valueFill = args.currentValue.hex;
        this.bulletChart.refresh();
    }

    public targetColor = (args: ColorPickerEventArgs) => {
        this.bulletChart.targetColor = args.currentValue.hex;
        this.bulletChart.refresh();
    }

    public valueChange = (args: SliderChangeEventArgs) => {
        this.bulletChart.dataSource[0].value = args.value;
        this.bulletChart.refresh();
    }

    public targetChange = (args: SliderChangeEventArgs) => {
        this.bulletChart.dataSource[0].target = args.value;
        this.bulletChart.refresh();
    }

    public load =  (args: IBulletLoadedEventArgs) => {
        let selectedTheme: string = location.hash.split('/')[1];
        selectedTheme = selectedTheme ? selectedTheme : 'Material';
        args.bulletChart.theme = <ChartTheme>(selectedTheme.charAt(0).toUpperCase() +
        selectedTheme.slice(1)).replace(/-dark/i, 'Dark').replace(/light/i, 'Light').replace(/contrast/i, 'Contrast');
    }

    public positionTitle: TextPosition = Browser.isDevice ? 'Top' : 'Left';
}