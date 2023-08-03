export class Registrazione {
    id!: number;
    username!: string;
    nome!: string;
    cognome!: string;
    indirizzo!: string;
    citta!: string;
    cap!: string;
    provincia!: string;
    telefono!: string;
    email!: string;
    password!: string;
    confermaPassword!: string;

    constructor( id: number, username: string, nome: string, cognome: string, indirizzo: string, citta: string, cap: string, provincia: string, telefono: string, email: string, password: string, confermaPassword: string) {

        this.id = id;
        this.username = username;
        this.nome = nome;
        this.cognome = cognome;
        this.indirizzo = indirizzo;
        this.citta = citta;
        this.cap = cap;
        this.provincia = provincia;
        this.telefono = telefono;
        this.email = email;
        this.password = password;
        this.confermaPassword = confermaPassword;
    }
    
}