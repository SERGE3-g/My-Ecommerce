import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProdottiInEvidenzaComponent } from './prodotti-in-evidenza.component';

describe('ProdottiInEvidenzaComponent', () => {
  let component: ProdottiInEvidenzaComponent;
  let fixture: ComponentFixture<ProdottiInEvidenzaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ProdottiInEvidenzaComponent]
    });
    fixture = TestBed.createComponent(ProdottiInEvidenzaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
