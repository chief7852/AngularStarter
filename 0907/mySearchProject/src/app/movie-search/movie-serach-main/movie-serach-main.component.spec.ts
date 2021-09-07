import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MovieSerachMainComponent } from './movie-serach-main.component';

describe('MovieSerachMainComponent', () => {
  let component: MovieSerachMainComponent;
  let fixture: ComponentFixture<MovieSerachMainComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MovieSerachMainComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MovieSerachMainComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
