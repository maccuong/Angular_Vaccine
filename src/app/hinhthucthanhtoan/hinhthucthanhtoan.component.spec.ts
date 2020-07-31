import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HinhthucthanhtoanComponent } from './hinhthucthanhtoan.component';

describe('HinhthucthanhtoanComponent', () => {
  let component: HinhthucthanhtoanComponent;
  let fixture: ComponentFixture<HinhthucthanhtoanComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HinhthucthanhtoanComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HinhthucthanhtoanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
