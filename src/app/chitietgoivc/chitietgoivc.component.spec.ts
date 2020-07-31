import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChitietgoivcComponent } from './chitietgoivc.component';

describe('ChitietgoivcComponent', () => {
  let component: ChitietgoivcComponent;
  let fixture: ComponentFixture<ChitietgoivcComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChitietgoivcComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChitietgoivcComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
