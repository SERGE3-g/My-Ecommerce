import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit {
  title = 'My-Ecommerce';

    registrazione: any;
  
    //constructor(private http: HttpClient) {}
  
    ngOnInit() {
      //this.http.get('http://localhost:3000/registrazione').subscribe((result) => {
       // this.registrazione = result;
     // });
    }
}


