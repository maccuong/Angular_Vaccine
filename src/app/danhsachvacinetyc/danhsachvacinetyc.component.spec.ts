import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DanhsachvacinetycComponent } from './danhsachvacinetyc.component';

describe('DanhsachvacinetycComponent', () => {
  let component: DanhsachvacinetycComponent;
  let fixture: ComponentFixture<DanhsachvacinetycComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DanhsachvacinetycComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DanhsachvacinetycComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
