import { Component, ViewEncapsulation, ViewChild } from '@angular/core';
import { ProgressBar, ProgressAnnotation, IProgressValueEventArgs, ILoadedEventArgs, ProgressTheme,
    AnimationModel } from '@syncfusion/ej2-progressbar';
import { EmitType } from '@syncfusion/ej2-base';
ProgressBar.Inject(ProgressAnnotation);

/**
 * RTl sample
 */
@Component({
    selector: 'control-content',
    templateUrl: 'custom-content.html',
    encapsulation: ViewEncapsulation.None
})

export class ProgressBarCustomComponent {
    public clearTimeout1: number;
    public clearTimeout2: number;
    public annotationColors: {
        material: string,
        fabric: string,
        bootstrap: string,
        bootstrap4: string,
        highcontrast: string,
        tailwind: string,
        bootstrap5dark: string,
        bootstrapdark: string,
        fabricdark: string,
        materialdark: string,
        tailwinddark: string,
        bootstrap5: string
    } = { material: '#e91e63', fabric: '#0078D6', bootstrap: '#317ab9', bootstrap4: '#007bff', highcontrast: '#FFD939', tailwind: '#4F46E5', bootstrap5: '#0D6EFD', bootstrap5dark: '#0D6EFD', bootstrapdark: '#9A9A9A', fabricdark: '#9A9A9A', materialdark: '#9A9A9A', tailwinddark: '#22D3EE' };
    public load: EmitType<ILoadedEventArgs> = (args: ILoadedEventArgs) => {
        let selectedTheme: string = location.hash.split('/')[1];
        selectedTheme = selectedTheme ? selectedTheme : 'Material';
        args.progressBar.theme = <ProgressTheme>(selectedTheme.charAt(0).toUpperCase() +
            selectedTheme.slice(1)).replace(/-dark/i, 'Dark').replace(/contrast/i, 'Contrast');
        if (args.progressBar.element.id === 'label-container') {
            // tslint:disable-next-line:max-line-length
            args.progressBar.annotations[0].content = '<div id="point1" class="plabeltxt" style="color: ' + this.annotationColors[selectedTheme.replace(/-/i, '')] + ';font-size:25px "><span>80%</span></div>';
        } else if (args.progressBar.element.id === 'download-container') {
            args.progressBar.annotations[0].content = '<img src="./assets/progressbar/' + selectedTheme.replace(/-/i, '') + '-Download.svg"></img>';
        } else {
            args.progressBar.annotations[0].content = '<img src="./assets/progressbar/' + selectedTheme.replace(/-/i, '') + '-pause.svg"></img>';
        }
    }
    public type1: string = 'Circular';
    public type2: string = 'Circular';
    public type3: string = 'Circular';
    public min1: number = 0;
    public max1: number = 100;
    public value1: number = 80;
    public startAngle1: number = 180;
    public endAngle1: number = 180;
    public width: string = '150';
    public height: string = '150';
    public min2: number = 0;
    public max2: number = 100;
    public value2: number = 100;
    public min3: number = 0;
    public max3: number = 100;
    public value3: number = 100;
    public animation: AnimationModel = { enable: true, duration: 2000, delay: 0 };
    @ViewChild('annotation1')
    public annotation: ProgressBar;
    @ViewChild('annotation2')
    public pausePlay: ProgressBar;
    @ViewChild('annotation3')
    public downloadProgress: ProgressBar;
    public onClick = () => {
        this.annotation.refresh();
        this.pausePlay.refresh();
        this.downloadProgress.refresh();
    }
    public progressComplete(args: IProgressValueEventArgs): void {
        clearTimeout(this.clearTimeout1);
        this.clearTimeout1 = window.setTimeout(
            () => {
                //tslint:disable-next-line
                this.pausePlay.annotations[0].content = '<img src="./assets/progressbar/' + (this.pausePlay.theme).toLowerCase() + '-Play.svg"></img>';
                this.pausePlay.dataBind();
            },
            2000
        );
    }
    public progressComplete1(args: IProgressValueEventArgs): void {
        clearTimeout(this.clearTimeout2);
        this.clearTimeout2 = window.setTimeout(
            () => {
                //tslint:disable-next-line
                this.downloadProgress.annotations[0].content = '<img src="./assets/progressbar/' + (this.downloadProgress.theme).toLowerCase() + '-Tick.svg"></img>';
                this.downloadProgress.dataBind();
            },
            2000
        );
    }
}
