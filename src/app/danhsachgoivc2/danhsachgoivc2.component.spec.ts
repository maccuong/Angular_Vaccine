import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Danhsachgoivc2Component } from './danhsachgoivc2.component';

describe('Danhsachgoivc2Component', () => {
  let component: Danhsachgoivc2Component;
  let fixture: ComponentFixture<Danhsachgoivc2Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Danhsachgoivc2Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Danhsachgoivc2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
