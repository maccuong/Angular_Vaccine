import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LoginNhanvienComponent } from './login-nhanvien.component';

describe('LoginNhanvienComponent', () => {
  let component: LoginNhanvienComponent;
  let fixture: ComponentFixture<LoginNhanvienComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LoginNhanvienComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LoginNhanvienComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
