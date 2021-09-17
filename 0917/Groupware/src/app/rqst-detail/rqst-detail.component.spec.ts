import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RqstDetailComponent } from './rqst-detail.component';

describe('RqstDetailComponent', () => {
  let component: RqstDetailComponent;
  let fixture: ComponentFixture<RqstDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RqstDetailComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RqstDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
