import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Danhsachgoivc5Component } from './danhsachgoivc5.component';

describe('Danhsachgoivc5Component', () => {
  let component: Danhsachgoivc5Component;
  let fixture: ComponentFixture<Danhsachgoivc5Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Danhsachgoivc5Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Danhsachgoivc5Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
