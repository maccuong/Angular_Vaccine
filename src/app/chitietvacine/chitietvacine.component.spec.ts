import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietvacineComponent } from './chitietvacine.component';

describe('ChitietvacineComponent', () => {
  let component: ChitietvacineComponent;
  let fixture: ComponentFixture<ChitietvacineComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietvacineComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietvacineComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
