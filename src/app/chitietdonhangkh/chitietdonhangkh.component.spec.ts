import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietdonhangkhComponent } from './chitietdonhangkh.component';

describe('ChitietdonhangkhComponent', () => {
  let component: ChitietdonhangkhComponent;
  let fixture: ComponentFixture<ChitietdonhangkhComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietdonhangkhComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietdonhangkhComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
