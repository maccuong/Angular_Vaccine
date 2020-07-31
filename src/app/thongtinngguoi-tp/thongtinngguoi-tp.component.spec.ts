import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ThongtinngguoiTPComponent } from './thongtinngguoi-tp.component';

describe('ThongtinngguoiTPComponent', () => {
  let component: ThongtinngguoiTPComponent;
  let fixture: ComponentFixture<ThongtinngguoiTPComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ThongtinngguoiTPComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ThongtinngguoiTPComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
