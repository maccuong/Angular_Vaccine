import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormgiohangComponent } from './formgiohang.component';

describe('FormgiohangComponent', () => {
  let component: FormgiohangComponent;
  let fixture: ComponentFixture<FormgiohangComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormgiohangComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormgiohangComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
