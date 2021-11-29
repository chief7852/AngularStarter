import { Component, ViewEncapsulation } from '@angular/core';
import { ILoadedEventArgs, ITextRenderEventArgs, ChartTheme, AxisModel, MarkerSettingsModel } from '@syncfusion/ej2-angular-charts';
import { Browser } from '@syncfusion/ej2-base';
/**
 * Sample for Data Label Template
 */
@Component({
    selector: 'control-content',
    templateUrl: 'data-label-template.html',
    styleUrls: ['chart.style.css'],
    encapsulation: ViewEncapsulation.None
})
export class DataLabelComponent {
    public theme: ChartTheme;
    public materialMan: string = '<div style="background-color:#00bdae;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public materialWomen: string = '<div style="background-color:#404041;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public fabricMan: string = '<div style="background-color:#4472c4;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public fabricWomen: string = '<div style="background-color:#ed7d31;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrapMan: string = '<div style="background-color:#a16ee5;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrapWomen: string = '<div style="background-color:#f7ce69;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrap5Man: string = '<div style="background-color:#262E0B;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrap5Women: string = '<div style="background-color:#668E1F;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public highcontrastMan: string = '<div style="background-color:#79ECE4;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public highcontrastWomen: string = '<div style="background-color:#E98272;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public tailwindMan: string = '<div style="background-color:#5A61F6;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public tailwindWomen: string = '<div style="background-color:#65A30D;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public materialdarkMan: string = '<div style="background-color:#00bdae;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public materialdarkWomen: string = '<div style="background-color:#404041;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public fabricdarkMan: string = '<div style="background-color:#4472c4;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public fabricdarkWomen: string = '<div style="background-color:#ed7d31;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrapdarkMan: string = '<div style="background-color:#a16ee5;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrapdarkWomen: string = '<div style="background-color:#f7ce69;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public tailwinddarkMan: string = '<div style="background-color:#5A61F6;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public tailwinddarkWomen: string = '<div style="background-color:#65A30D;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrap5darkMan: string = '<div style="background-color:#5ECB9B;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public bootstrap5darkWomen: string = '<div style="background-color:#A860F1;border-radius: 3px;">' +
        '<img src="./assets/chart/images/male.png" style="width: 24px; height: 24px; padding: 2px" />' +
        '<div style="color:white; font-family:Roboto; font-style: medium; fontp-size:14px; float: right;'
        + 'padding: 2px;line-height: 20px;text-align: center;padding-right: 6px;"><span>' +
        '${point.y}M </span></div></div>';
    public data: Object[] = [
        { x: 2010, y: 1014 }, { x: 2011, y: 1040 },
        { x: 2012, y: 1065 }, { x: 2013, y: 1110 },
        { x: 2014, y: 1130 }, { x: 2015, y: 1153 },
        { x: 2016, y: 1175 }
    ];
    public data1: Object[] = [
        { x: 2010, y: 990 }, { x: 2011, y: 1010 },
        { x: 2012, y: 1030 }, { x: 2013, y: 1070 },
        { x: 2014, y: 1105 }, { x: 2015, y: 1138 },
        { x: 2016, y: 1155 }
    ];
    //Initializing Primary X Axis
    public primaryXAxis: AxisModel = {
        minimum: 2010, maximum: 2016,
        interval: Browser.isDevice ? 2 : 1,
        edgeLabelPlacement: 'Shift',
        labelStyle: {
            fontFamily: 'Roboto',
            fontStyle: 'medium',
            size: '14px'
        },
        majorGridLines: { width: 0 },
        lineStyle: { color: '#eaeaea', width: 1 }
    };
    //Initializing Primary Y Axis
    public primaryYAxis: AxisModel = {
        minimum: 900, maximum: 1300,
        labelFormat: '{value}M',
        labelStyle: {
            fontFamily: 'Roboto',
            fontStyle: 'medium', size: '14px'
        },
        majorGridLines: {
            color: '#eaeaea', width: 1
        },
        lineStyle: {
            color: '#eaeaea', width: 1
        }
    };
    public marker1: MarkerSettingsModel = {
        visible: true,
        shape: 'Circle',
        dataLabel: {
            visible: true,
            position: 'Top',
            margin: { right: 15 },
            template: this.materialMan
        }
    };
    public marker2: Object = {
        visible: true,
        shape: 'Rectangle',
        dataLabel: {
            visible: true,
            position: 'Bottom',
            margin: { right: 15 },
            template: this.materialWomen
        }
    };
    public textRender(args: ITextRenderEventArgs): void {
        if (this.theme === 'Material') {
            args.template = args.series.name === 'Male' ? this.materialMan : this.materialWomen;
        } else if (this.theme === 'Fabric') {
            args.template = args.series.name === 'Male' ? this.fabricMan : this.fabricWomen;
        }  else if (this.theme === <ChartTheme>'Highcontrast') {
            args.template = args.series.name === 'Male' ? this.highcontrastMan : this.highcontrastWomen;
        }  else if (this.theme === <ChartTheme>'Tailwind') {
            args.template = args.series.name === 'Male' ? this.tailwindMan : this.tailwindWomen;
        } else if (this.theme === <ChartTheme>'Bootstrap') {
            args.template = args.series.name === 'Male' ? this.bootstrapMan : this.bootstrapWomen;
        } else if (this.theme === <ChartTheme>'Bootstrap5') {
            args.template = args.series.name === 'Male' ? this.bootstrap5Man : this.bootstrap5Women;
        } else if (this.theme === <ChartTheme>'TailwindDark') {
            args.template = args.series.name === 'Male' ? this.tailwinddarkMan : this.tailwinddarkWomen;
        } else if (this.theme === 'MaterialDark') {
            args.template = args.series.name === 'Male' ? this.materialdarkMan : this.materialdarkWomen;
        } else if (this.theme === 'FabricDark') {
            args.template = args.series.name === 'Male' ? this.fabricdarkMan : this.fabricdarkWomen;
        } else if (this.theme === 'Bootstrap5Dark') {
            args.template = args.series.name === 'Male' ? this.bootstrap5darkMan : this.bootstrap5darkWomen;
        } else {
            args.template = args.series.name === 'Male' ? this.bootstrapdarkMan : this.bootstrapdarkWomen;
        }
    };
    public chartArea: Object = {
        border: {
            width: 0
        }
    };
    public width: string = Browser.isDevice ? '100%' : '80%';
      // custom code start
    public load(args: ILoadedEventArgs): void {
        let selectedTheme: string = location.hash.split('/')[1];
        selectedTheme = selectedTheme ? selectedTheme : 'Material';
        args.chart.theme = <ChartTheme>(selectedTheme.charAt(0).toUpperCase() + selectedTheme.slice(1)).replace(/-dark/i, "Dark");
        this.theme = args.chart.theme;
    };
      // custom code end
    //Initializing Chart Title
    public title: string = 'Population of India Statistics';
    public subTitle: string = '(2010 - 2016)';
    public subTitleStyle: Object = {
        textAlignment: 'Far'
    };
    public titleStyle: Object = {
        fontFamily: 'Roboto',
        fontStyle: 'medium', size: '14px'
    };
    constructor() {
        //code
    };

}