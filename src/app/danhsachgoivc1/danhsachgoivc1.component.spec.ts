import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Danhsachgoivc1Component } from './danhsachgoivc1.component';

describe('Danhsachgoivc1Component', () => {
  let component: Danhsachgoivc1Component;
  let fixture: ComponentFixture<Danhsachgoivc1Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Danhsachgoivc1Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Danhsachgoivc1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
