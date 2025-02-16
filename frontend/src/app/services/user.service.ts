import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  private apiUrl = 'https://localhost:5258/api/users';

  constructor(private http: HttpClient) {}

  login(cedula: string, password: string): Observable<any> {
    return this.http.post(`${this.apiUrl}/login`, { cedula, password });
  }

  getUsers(): Observable<any> {
    return this.http.get(`${this.apiUrl}`);
  }

  register(user: any): Observable<any> {
    return this.http.post(`${this.apiUrl}`, user);
  }
}
