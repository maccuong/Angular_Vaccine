import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VaccineFilterComponent } from './vaccine-filter.component';

describe('VaccineFilterComponent', () => {
  let component: VaccineFilterComponent;
  let fixture: ComponentFixture<VaccineFilterComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VaccineFilterComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VaccineFilterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
