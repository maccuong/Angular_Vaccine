import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ThemgoivcComponent } from './themgoivc.component';

describe('ThemgoivcComponent', () => {
  let component: ThemgoivcComponent;
  let fixture: ComponentFixture<ThemgoivcComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ThemgoivcComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ThemgoivcComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
