import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CategorieDiProdottiComponent } from './categorie-di-prodotti.component';

describe('CategorieDiProdottiComponent', () => {
  let component: CategorieDiProdottiComponent;
  let fixture: ComponentFixture<CategorieDiProdottiComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CategorieDiProdottiComponent]
    });
    fixture = TestBed.createComponent(CategorieDiProdottiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
