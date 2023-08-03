import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { RegistrazioneComponent } from './registrazione/registrazione.component';
import { LoginComponent } from './login/login.component';
import { ProfiloUtenteComponent } from './profilo-utente/profilo-utente.component';
import { CategorieDiProdottiComponent } from './categorie-di-prodotti/categorie-di-prodotti.component';
import { PromozioniComponent } from './promozioni/promozioni.component';
import { AssistenzaClientiComponent } from './assistenza-clienti/assistenza-clienti.component';
import { ContactComponent } from './contact/contact.component';

const routes: Routes = [
 
  {path:'home',component:HomeComponent},
  {path:'registrazione',component:RegistrazioneComponent},
  {path:'login',component:LoginComponent},
  {path:'profilo-utente',component:ProfiloUtenteComponent},
  {path:'categorie-di-prodotti',component:CategorieDiProdottiComponent},
  {path:'promozione',component:PromozioniComponent},
  {path:'assistenza-clientti',component:AssistenzaClientiComponent},
  {path:'contact',component:ContactComponent},
  {path:'',redirectTo:'/home',pathMatch:'full' },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
   declarations: [
  ]
})
export class AppRoutingModule { }
