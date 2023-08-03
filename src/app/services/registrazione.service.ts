import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Registrazione } from '../model/registrazione';


@Injectable({
  providedIn: 'root'
})
export class RegistrazioneService {

  readonly url: string = 'http://localhost:3000/registrazione';

  constructor(private http: HttpClient) {}

  save(register: Registrazione): Observable<Registrazione> {
    return this.http.post<Registrazione>(this.url, register);
  }

  findById(registerId: number): Observable<Registrazione> {
    return this.http.get<Registrazione>(`${this.url}/${registerId}`);
  }

  findAll(): Observable<Array<Registrazione>> {
    return this.http.get<Array<Registrazione>>(this.url);
  }

  

}
