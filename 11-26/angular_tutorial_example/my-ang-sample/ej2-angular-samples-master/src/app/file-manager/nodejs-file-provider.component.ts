import { Component, ViewEncapsulation } from '@angular/core';
import { FileManagerComponent, NavigationPaneService, ToolbarService, DetailsViewService, ContextMenuService } from '@syncfusion/ej2-angular-filemanager';
/**
 * File Manager sample with  service
 */
@Component({
    selector: 'control-content',
    templateUrl: 'nodejs-file-provider.html',
    styleUrls: ['nodejs-file-provider.css'],
    encapsulation: ViewEncapsulation.None,
    providers: [ NavigationPaneService, ToolbarService, DetailsViewService, ContextMenuService]
})

export class NodeJSController {
    public ajaxSettings: object;
    public hostUrl: string = 'https://ej2-nodejs-service.azurewebsites.net/';
    public ngOnInit(): void {
        this.ajaxSettings = {
            url: this.hostUrl,
            getImageUrl: this.hostUrl + 'GetImage',
            uploadUrl: this.hostUrl + 'Upload',
            downloadUrl: this.hostUrl + 'Download'
        };
    }
}
