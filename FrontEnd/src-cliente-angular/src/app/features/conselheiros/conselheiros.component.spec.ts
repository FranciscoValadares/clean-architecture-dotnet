import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ConselheirosComponent } from './conselheiros.component';

describe('ConselheirosComponent', () => {
  let component: ConselheirosComponent;
  let fixture: ComponentFixture<ConselheirosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ConselheirosComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ConselheirosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
