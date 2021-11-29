/**
 * Rich Text Editor Markdown Overview Sample
 */

import { Component, ViewChild, ViewEncapsulation } from '@angular/core';
import { RichTextEditorComponent, ToolbarService, TableService, EditorMode } from '@syncfusion/ej2-angular-richtexteditor';
import { LinkService, ImageService, MarkdownEditorService } from '@syncfusion/ej2-angular-richtexteditor';
import { MarkdownFormatter } from '@syncfusion/ej2-angular-richtexteditor';
import { createElement, KeyboardEventArgs } from '@syncfusion/ej2-base';
import * as Marked from 'marked';
import { ToolbarModule } from '@syncfusion/ej2-angular-navigations';

@Component({
    selector: 'control-content',
    templateUrl: 'markdown-editor.html',
    styleUrls: ['style.css'],
    encapsulation: ViewEncapsulation.None,
    providers: [ToolbarService, LinkService, ImageService, MarkdownEditorService, TableService]
})
export class MarkdownDefaultComponent {

    @ViewChild('mdDefault')
    public rteObj: RichTextEditorComponent;

    public textArea: HTMLTextAreaElement;
    public mdsource: HTMLElement;
    public tools: ToolbarModule = {
        items: ['Bold', 'Italic', 'StrikeThrough', '|',
            'Formats', 'OrderedList', 'UnorderedList','SuperScript', 'SubScript', '|',
            'CreateTable', 'CreateLink', 'Image', '|',
            {
                tooltipText: 'Preview',
                template: '<button id="preview-code" class="e-tbar-btn e-control e-btn e-icon-btn">' +
                    '<span class="e-btn-icon e-md-preview e-icons"></span></button>'
            }, '|', 'Undo', 'Redo']
    };

    public formatter: MarkdownFormatter = new MarkdownFormatter({ listTags: { 'OL': '1., 2., 3.' } });
    public mode: EditorMode = 'Markdown';

    public onCreate(): void {
        this.textArea = this.rteObj.contentModule.getEditPanel() as HTMLTextAreaElement;
        this.textArea.addEventListener('keyup', (e: KeyboardEventArgs) => {
            this.markdownConversion();
        });
        this.mdsource = document.getElementById('preview-code');
        this.mdsource.addEventListener('click', (e: MouseEvent) => {
            this.fullPreview();
            if ((e.target as HTMLElement).parentElement.classList.contains('e-active')) {
                this.rteObj.disableToolbarItem(['Bold', 'Italic', 'StrikeThrough', 'Formats', 'OrderedList',
                    'UnorderedList', 'CreateTable', 'SuperScript', 'SubScript', 'CreateLink', 'Image']);
            } else {
                this.rteObj.enableToolbarItem(['Bold', 'Italic', 'StrikeThrough', 'Formats', 'OrderedList',
                    'UnorderedList', 'CreateTable', 'SuperScript', 'SubScript', 'CreateLink', 'Image']);
            }
        });
    }
    public markdownConversion(): void {
        if (this.mdsource.classList.contains('e-active')) {
            const id: string = this.rteObj.getID() + 'html-view';
            const htmlPreview: Element = this.rteObj.element.querySelector('#' + id);
            htmlPreview.innerHTML = Marked((this.rteObj.contentModule.getEditPanel() as HTMLTextAreaElement).value);
        }
    }
    public fullPreview(): void {
        const id: string = this.rteObj.getID() + 'html-preview';
        let htmlPreview: HTMLElement = this.rteObj.element.querySelector('#' + id) as HTMLElement;
        const previewTextArea: HTMLElement = this.rteObj.element.querySelector('.e-rte-content') as HTMLElement;
        if (this.mdsource.classList.contains('e-active')) {
            this.mdsource.classList.remove('e-active');
            this.textArea.style.display = 'block';
            htmlPreview.style.display = 'none';
            previewTextArea.style.overflow = 'hidden';
        } else {
            this.mdsource.classList.add('e-active');
            if (!htmlPreview) {
                htmlPreview = createElement('div', { className: 'e-content e-pre-source' });
                htmlPreview.id = id;
                this.textArea.parentNode.appendChild(htmlPreview);
                previewTextArea.style.overflow = 'auto';
            }
            if (previewTextArea.style.overflow === 'hidden') {
                previewTextArea.style.overflow = 'auto';
            }
            this.textArea.style.display = 'none';
            htmlPreview.style.display = 'block';
            htmlPreview.innerHTML = Marked((this.rteObj.contentModule.getEditPanel() as HTMLTextAreaElement).value);
        }
    }
}
