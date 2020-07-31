import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ThongkeslvacineComponent } from './thongkeslvacine.component';

describe('ThongkeslvacineComponent', () => {
  let component: ThongkeslvacineComponent;
  let fixture: ComponentFixture<ThongkeslvacineComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ThongkeslvacineComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ThongkeslvacineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
