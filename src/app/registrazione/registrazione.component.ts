import { Component } from '@angular/core';
import { RegistrazioneService } from '../services/registrazione.service';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-registrazione',
  templateUrl: './registrazione.component.html',
  styleUrls: ['./registrazione.component.css']
})
export class RegistrazioneComponent {
  [x: string]: any;

  registrazione!: ['id', 'username', 'nome', 'cognome', 'citta', 'indirizzo', 'cap', 'telefono', 'email', 'password', 'confermapassword'];


  registrazioneForm = new FormGroup({
    idForm : new FormControl(''),
    nomeForm: new FormControl(''),
    cognomeForm: new FormControl(''),
    codicefiscaleForm: new FormControl(''),
    cittaForm: new FormControl(''),
    indirizzoForm: new FormControl(''),
    capForm: new FormControl(''),
    telefonoForm: new FormControl(''),
    emailForm: new FormControl(''),
    usernameForm: new FormControl(''),
    passwordForm: new FormControl(''),
    confermapasswordForm: new FormControl('')
  });

  username: string = '';
  nome: string = '';
  cognome: string = '';
  indirizzo: string = '';
  citta: string = '';
  cap: string = '';
  provincia: string = '';
  telefono: string = '';
  email: string = '';
  password: string = '';
  confermaPassword: string = '';

 
  content=" Complimenti Sei stato registrato con successo";
    registrazioneInserito: any = null;

 //constructor(private registrazioneSvc: RegistrazioneService , private modaleSvc:NgbModal) {}


  onSubmit(modal: any) {
    const userData = this.registrazione.values;
         
      const registrazione ={
      username: this.username,
      nome: this.nome,
      cognome: this.cognome,
      indirizzo: this.indirizzo,
      citta: this.citta,
      cap: this.cap,
      provincia: this.provincia,
      telefono: this.telefono,
      email: this.email,
      password: this.password
    };

    // this.registrazioneSvc.save(this['registrazionForm']).subscribe({
    //   next: (response) => {
    //     this.registrazioneInserito = response;
    //     this.modaleSvc.open(modal);
    //   }
    // }) 
    console.log(registrazione);
  }

  onReset() {
    this.username = '';
    this.nome = '';
    this.cognome = '';
    this.indirizzo = '';
    this.citta = '';
    this.cap = '';
    this.provincia = '';
    this.telefono = '';
    this.email = '';
    this.password = '';
    this.confermaPassword = '';
  }


}



 
