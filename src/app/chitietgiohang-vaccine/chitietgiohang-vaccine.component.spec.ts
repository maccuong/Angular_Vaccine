import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietgiohangVaccineComponent } from './chitietgiohang-vaccine.component';

describe('ChitietgiohangVaccineComponent', () => {
  let component: ChitietgiohangVaccineComponent;
  let fixture: ComponentFixture<ChitietgiohangVaccineComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietgiohangVaccineComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietgiohangVaccineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
