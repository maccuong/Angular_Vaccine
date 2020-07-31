import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Danhsachgoivc4Component } from './danhsachgoivc4.component';

describe('Danhsachgoivc4Component', () => {
  let component: Danhsachgoivc4Component;
  let fixture: ComponentFixture<Danhsachgoivc4Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Danhsachgoivc4Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Danhsachgoivc4Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
