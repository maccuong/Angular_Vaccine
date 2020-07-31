import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DanhsachdonhangcuaKhComponent } from './danhsachdonhangcua-kh.component';

describe('DanhsachdonhangcuaKhComponent', () => {
  let component: DanhsachdonhangcuaKhComponent;
  let fixture: ComponentFixture<DanhsachdonhangcuaKhComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DanhsachdonhangcuaKhComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DanhsachdonhangcuaKhComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
