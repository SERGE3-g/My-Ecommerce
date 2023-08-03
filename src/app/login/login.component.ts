import { Component } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  username: string = '';
  password: string = '';
error: any;
success: any;

  onSubmit() {
    // Simulazione di autenticazione
    if (this.username === 'utente' && this.password === 'password') {
      alert('Login avvenuto con successo!');
    } else {
      alert('Credenziali non valide. Riprova.');
    }
  }

}
