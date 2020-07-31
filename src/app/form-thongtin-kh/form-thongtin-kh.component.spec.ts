import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormThongtinKHComponent } from './form-thongtin-kh.component';

describe('FormThongtinKHComponent', () => {
  let component: FormThongtinKHComponent;
  let fixture: ComponentFixture<FormThongtinKHComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormThongtinKHComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormThongtinKHComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
