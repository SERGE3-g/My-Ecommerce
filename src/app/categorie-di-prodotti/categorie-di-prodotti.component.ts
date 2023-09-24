import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-categorie-di-prodotti',
  templateUrl: './categorie-di-prodotti.component.html',
  styleUrls: ['./categorie-di-prodotti.component.css']
})
export class CategorieDiProdottiComponent  implements OnInit  {

  categorie = [
    { id: 1, nome: 'Elettronica' },
    { id: 2, nome: 'Abbigliamento' },
    { id: 3, nome: 'Alimentari' },
    // Aggiungi altre categorie qui
  ];

  constructor() { }

  ngOnInit(): void {
  }

  selezionaCategoria(id: number) {
    console.log('Categoria selezionata:', id);
    // Aggiungi qui la logica per gestire la selezione della categoria
  }

}
