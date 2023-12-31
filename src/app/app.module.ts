import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NavbarComponent } from './navbar/navbar.component';
import { HomeComponent } from './home/home.component';
import { ProdottiInEvidenzaComponent } from './prodotti-in-evidenza/prodotti-in-evidenza.component';
import { CategorieDiProdottiComponent } from './categorie-di-prodotti/categorie-di-prodotti.component';
import { PromozioniComponent } from './promozioni/promozioni.component';
import { AssistenzaClientiComponent } from './assistenza-clienti/assistenza-clienti.component';
import { ProfiloUtenteComponent } from './profilo-utente/profilo-utente.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RegistrazioneComponent } from './registrazione/registrazione.component';
import { LoginComponent } from './login/login.component';
import { ContactComponent } from './contact/contact.component';
import { AboutComponent } from './about/about.component';
import { CarelloComponent } from './carello/carello.component';
import { OrdineComponent } from './ordine/ordine.component';
import { ElettronicaComponent } from './elettronica/elettronica.component';
import { MatListModule } from '@angular/material/list';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    HomeComponent,
    ProdottiInEvidenzaComponent,
    CategorieDiProdottiComponent,
    PromozioniComponent,
    AssistenzaClientiComponent,
    ProfiloUtenteComponent,
    RegistrazioneComponent,
    LoginComponent,
    ContactComponent,
    AboutComponent,
    CarelloComponent,
    OrdineComponent,
    ElettronicaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    ReactiveFormsModule,
    FormsModule,
    MatListModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
