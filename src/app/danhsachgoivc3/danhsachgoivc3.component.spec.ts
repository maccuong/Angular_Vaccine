import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Danhsachgoivc3Component } from './danhsachgoivc3.component';

describe('Danhsachgoivc3Component', () => {
  let component: Danhsachgoivc3Component;
  let fixture: ComponentFixture<Danhsachgoivc3Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Danhsachgoivc3Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Danhsachgoivc3Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
