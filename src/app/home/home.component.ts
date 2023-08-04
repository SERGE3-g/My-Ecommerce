import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css','./home.component1.css']
})
export class HomeComponent implements OnInit {

     //Array di oggetti che rappresentano i prodotti in vetrina del section#featured
  
  featuredProducts = [
    { name: 'Prodotto 1', price: 100, image: 'image1.jpg' },
    { name: 'Prodotto 2', price: 200, image: 'image2.jpg' },
    { name: 'Prodotto 3', price: 150, image: 'image3.jpg' },
    { name: 'Prodotto 4', price: 300, image: 'image4.jpg' },
    { name: 'Prodotto 5', price: 250, image: 'image5.jpg' },
    { name: 'Prodotto 6', price: 350, image: 'image6.jpg' },
    { name: 'Prodotto 7', price: 400, image: 'image7.jpg' },
    { name: 'Prodotto 8', price: 450, image: 'image8.jpg' },
    { name: 'Prodotto 9', price: 500, image: 'image9.jpg' },
    { name: 'Prodotto 10', price: 550, image: 'image10.jpg' },
    { name: 'Prodotto 11', price: 600, image: 'image11.jpg' },
    { name: 'Prodotto 12', price: 650, image: 'image12.jpg' },
    { name: 'Prodotto 13', price: 700, image: 'image13.jpg' },
    { name: 'Prodotto 14', price: 750, image: 'image14.jpg' },
    { name: 'Prodotto 15', price: 800, image: 'image15.jpg' },
    { name: 'Prodotto 16', price: 850, image: 'image16.jpg' },
    { name: 'Prodotto 17', price: 900, image: 'image17.jpg' },
    { name: 'Prodotto 18', price: 950, image: 'image18.jpg' },
    { name: 'Prodotto 19', price: 1000, image: 'image19.jpg' }
  ];

  // Array di stringhe che rappresentano le categorie del section#categories

  categories = [
    'Elettronica',
    'Abbigliamento',
    'Giochi',
    'Libri',
    'Cucina',
    'Sport'
    
  ];

  constructor() { }

  ngOnInit(): void {
  }
}