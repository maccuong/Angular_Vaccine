import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { QuanlidsgoivaccineComponent } from './quanlidsgoivaccine.component';

describe('QuanlidsgoivaccineComponent', () => {
  let component: QuanlidsgoivaccineComponent;
  let fixture: ComponentFixture<QuanlidsgoivaccineComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ QuanlidsgoivaccineComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(QuanlidsgoivaccineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
