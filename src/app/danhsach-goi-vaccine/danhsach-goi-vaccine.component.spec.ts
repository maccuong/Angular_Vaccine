import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DanhsachGoiVaccineComponent } from './danhsach-goi-vaccine.component';

describe('DanhsachGoiVaccineComponent', () => {
  let component: DanhsachGoiVaccineComponent;
  let fixture: ComponentFixture<DanhsachGoiVaccineComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DanhsachGoiVaccineComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DanhsachGoiVaccineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
