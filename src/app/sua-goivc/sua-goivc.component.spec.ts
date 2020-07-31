import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SuaGoivcComponent } from './sua-goivc.component';

describe('SuaGoivcComponent', () => {
  let component: SuaGoivcComponent;
  let fixture: ComponentFixture<SuaGoivcComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SuaGoivcComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SuaGoivcComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
