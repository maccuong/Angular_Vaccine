import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DoanhthutungayComponent } from './doanhthutungay.component';

describe('DoanhthutungayComponent', () => {
  let component: DoanhthutungayComponent;
  let fixture: ComponentFixture<DoanhthutungayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DoanhthutungayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DoanhthutungayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
