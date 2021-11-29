import { Component, ViewEncapsulation, ViewChild } from '@angular/core';
import { ILoadedEventArgs, GaugeTheme, ExportType, CircularGaugeComponent, CircularGauge } from '@syncfusion/ej2-angular-circulargauge';
import { PrintService, PdfExportService, ImageExportService } from '@syncfusion/ej2-angular-circulargauge';
import { DropDownList } from '@syncfusion/ej2-dropdowns';

/**
 * Sample for default circular gauge
 */
@Component({
    selector: 'control-content',
    templateUrl: 'export.html',
    encapsulation: ViewEncapsulation.None,
    providers: [PrintService, PdfExportService, ImageExportService]
})
export class ExportComponent {
    @ViewChild('gauge')
    public gauge: CircularGauge;
    public allowPrint: boolean = true;
    public allowPdfExport: boolean = true;
    public allowImageExport: boolean =true;
    public minorTicks: Object = {
        position: 'Outside',
        width: 1,
        height: 8,
        interval: 2,
        useRangeColor: true
    };
    public majorTicks: Object = {
        position: 'Outside',
        width: 1,
        height: 25,
        interval: 10,
        useRangeColor: true
    };
    public lineStyle: Object = {
        width: 0
    };
    // custom code start
    public load(args: ILoadedEventArgs): void {
        let selectedTheme: string = location.hash.split('/')[1];
        selectedTheme = selectedTheme ? selectedTheme : 'Material';
        args.gauge.theme = <GaugeTheme>(selectedTheme.charAt(0).toUpperCase() +
        selectedTheme.slice(1)).replace(/-dark/i, 'Dark').replace(/contrast/i,  'Contrast');
    }
    // custom code end
    //Initializing Label Style
    public labelStyle: Object = {
        font: {
            color: '#424242',
            fontFamily: 'Roboto',
            size: '12px',
            fontWeight: 'Regular'
        },
        offset: 2,
        position: 'Outside',
        useRangeColor: true,
        hiddenLabel: 'Last'
    };
    public pointers: Object[] = [{
        value: 0, type: 'RangeBar', roundedCornerRadius: 0,
        pointerWidth: 0,radius: '0%'
    }];
    public ranges: object[] =  [
        {
            start: 0, end: 32,
            radius: '90%',
            startWidth: 10, endWidth: 35,
            color: '#F8A197',    
        },
        {
            start: 32, end: 70,
            radius: '90%',
            startWidth: 10, endWidth: 35,
            color: '#C45072',
        },    
        {
            start: 70, end: 100,
            radius: '90%',
            startWidth: 10, endWidth: 35,
            color: '#1B679F',
        }];
    public onClickPrint(e: Event): void {
        this.gauge.print();
    };
    public onClickExport(e: Event): void {
        let fileName: string = (<HTMLInputElement>(document.getElementById('fileName'))).value;
        this.gauge.export(<ExportType>this.exportType.value, fileName);
    }
    public exportType: DropDownList;
    ngOnInit(): void {
        this.exportType = new DropDownList({
            index: 0,
            width: '90%',
        });
        this.exportType.appendTo('#exporttype');
    }
    constructor() {
        // code
    };
}