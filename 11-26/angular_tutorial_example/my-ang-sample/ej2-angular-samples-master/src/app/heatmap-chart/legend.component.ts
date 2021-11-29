import { Component, ViewEncapsulation, ViewChild } from '@angular/core';
import { HeatMap, Legend, Tooltip, Adaptor, ILoadedEventArgs, ITooltipEventArgs, HeatMapTheme } from '@syncfusion/ej2-angular-heatmap';
import { SampleDataSource } from './legend-sample-data';
import { DropDownList } from '@syncfusion/ej2-dropdowns';
import { CheckBox } from '@syncfusion/ej2-buttons';
HeatMap.Inject(Tooltip, Legend, Adaptor);

/**
 * HeatMap Legend sample
 */
@Component({
    selector: 'control-content',
    templateUrl: 'legend.html',
    encapsulation: ViewEncapsulation.None
})
export class HeatmapLegendComponent {
    @ViewChild('heatmap')
    public heatmap: HeatMap;
    titleSettings: Object = {
        text: 'Hourly Weather Forecast',
        textStyle: {
            size: '15px',
            fontWeight: '500',
            fontStyle: 'Normal'
        }
    };
    xAxis: Object = {
        labels: ['London', 'Berlin', 'Madrid', 'Paris', 'Rome', 'Lisbon', 'Dublin']
    };
    yAxis: Object = {
        labels: ['12AM', '2AM', '4AM', '6AM', '8AM', '10AM', '12PM',
            '2PM', '4PM', '6PM', '8PM', '10PM']
    };
    public cellSettings: Object = {
        showLabel: false,
        format: '{value} C'
    };
    dataSource: Object = new SampleDataSource().legendSampleData;
    public paletteSettings: Object = {
        palette: [{ value: 0, color: '#6EB5D0' },
        { value: 10, color: '#7EDCA2' },
        { value: 19, color: '#DCD57E' },
        { value: 22, color: '#DCD57E' },
        ]
    };
    public legendSettings: Object = {
        position: 'Bottom',
        labelFormat: '{value}\xB0 C',
        title: {
            text :'Celsius'
        }
    };
	public tooltipRender(args: ITooltipEventArgs): void {
        args.content = [args.xLabel + ' | ' + args.yLabel + ' : ' + args.value + '\xB0 C'];
    };
    public load(args: ILoadedEventArgs): void {
        let selectedTheme: string = location.hash.split('/')[1];
        selectedTheme = selectedTheme ? selectedTheme : 'Material';
        args.heatmap.theme = <HeatMapTheme>(selectedTheme.charAt(0).toUpperCase() + selectedTheme.slice(1)).replace(/-dark/i, "Dark");
    };
    ngAfterViewInit() {

        let legentListObj: DropDownList = new DropDownList({
            index: 3,
            popupHeight: '200px',
            change: () => {
                this.heatmap.legendSettings.position = legentListObj.value.toString() === 'Right' ?
                    'Right' : legentListObj.value.toString() === 'Bottom' ?
                        'Bottom' : legentListObj.value.toString() === 'Left' ?
                            'Left' : legentListObj.value.toString() === 'Top' ? 'Top' : null;
            }
        });
        legentListObj.appendTo('#LegendPosition');
    }
    constructor() {
        //code
    };
}