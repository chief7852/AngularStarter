import { Component, ViewEncapsulation, ViewChild, ElementRef, AfterViewInit } from '@angular/core';
import { DialogComponent, ButtonPropsModel } from '@syncfusion/ej2-angular-popups';
import { EmitType } from '@syncfusion/ej2-base';
import { ButtonModel } from '@syncfusion/ej2-buttons';
import { ButtonComponent } from '@syncfusion/ej2-angular-buttons';
/**
 * Default Dialog Component
 */
@Component({
    selector: 'control-content',
    templateUrl: 'custom-dialog.html',
    styleUrls: ['custom-dialog.css'],
    encapsulation: ViewEncapsulation.None
})
export class DefaultDialogComponent implements AfterViewInit {

    // Define Dialog properties
    @ViewChild('alertDialog')
    public alertDialog: DialogComponent;

    @ViewChild('confirmDialog')
    public confirmDialog: DialogComponent;

    @ViewChild('promptDialog')
    public promptDialog: DialogComponent;

    @ViewChild('password')
    public password: ElementRef;

    @ViewChild('alertButton')
    public alertbtn: ButtonComponent;

    public alertHeader: string = 'Low Battery';
    public confirmHeader: string = 'Delete Multiple Items';
    public promptHeader: string = 'Join Wi-Fi network';
    public alertContent: string = '10% of battery remaining';
    public showCloseIcon: Boolean = false;
    public visible: Boolean = true;
    public hidden: Boolean = false;
    public confirmCloseIcon: Boolean = true;
    public target: string = '.control-section';
    public alertWidth: string = '250px';
    public confirmWidth: string = '400px';
    public promptWidth: string = '330px';
    public animationSettings: Object = { effect: 'None' };
    public hide: any;

    ngAfterViewInit(): void {
        this.alertbtn.element.focus();
    }
    public alertDlgBtnClick = (): void => {
        this.alertDialog.hide();
    }
    public confirmDlgBtnClick = (): void => {
        this.confirmDialog.hide();
    }
    public promptDlgBtnClick = (): void => {
        this.promptDialog.hide();
    }
    public onFocus = (): void => {
        this.password.nativeElement.parentElement.classList.add('e-input-focus');
    }
    public onBlur = (): void => {
        this.password.nativeElement.parentElement.classList.remove('e-input-focus');
    }

    // Render the Buttons to open corresponding Dialogs
    public alertDlgButtons: ButtonPropsModel[] = [{ click: this.alertDlgBtnClick.bind(this), buttonModel: { content: 'Dismiss', isPrimary: true } }];
    public confirmDlgButtons: ButtonPropsModel[] = [{ click: this.confirmDlgBtnClick.bind(this), buttonModel: { content: 'Yes', isPrimary: true } }, { click: this.confirmDlgBtnClick.bind(this), buttonModel: { content: 'No' } }];
    public promptDlgButtons: ButtonPropsModel[] = [{ click: this.promptDlgBtnClick.bind(this), buttonModel: { content: 'Connect', isPrimary: true } }, { click: this.promptDlgBtnClick.bind(this), buttonModel: { content: 'Cancel' } }];

    // While clicking alert button, open the alert Dialog
    public alertBtnClick = (): void => {
        this.alertDialog.show();
        this.dialogOpen();
    }

    // While clicking confirm button, open the confirm Dialog
    public confirmBtnClick = (): void => {
        this.confirmDialog.show();
        this.dialogOpen();
    }

    // While clicking prompt button, open the prompt Dialog
    public promptBtnClick = (): void => {
        this.promptDialog.show();
        this.dialogOpen();
    }

    // On Dialog close, show the buttons
    public dialogClose = (): void => {
        (document.querySelectorAll('.dlgbtn')[0] as HTMLElement).classList.remove('e-btn-hide');
        (document.querySelectorAll('.dlgbtn')[1] as HTMLElement).classList.remove('e-btn-hide');
        (document.querySelectorAll('.dlgbtn')[2] as HTMLElement).classList.remove('e-btn-hide');
    }
    // On Dialog open, hide the buttons
    public dialogOpen = (): void => {
        (document.querySelectorAll('.dlgbtn')[0] as HTMLElement).classList.add('e-btn-hide');
        (document.querySelectorAll('.dlgbtn')[1] as HTMLElement).classList.add('e-btn-hide');
        (document.querySelectorAll('.dlgbtn')[2] as HTMLElement).classList.add('e-btn-hide');
    }
}
