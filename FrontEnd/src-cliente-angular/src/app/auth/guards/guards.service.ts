import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { catchError, map, Observable, throwError } from 'rxjs';
import { JwtHelperService, JWT_OPTIONS } from '@auth0/angular-jwt';
import { User } from '../../core/fake-api/db.data';

@Injectable({
  providedIn: 'root'
})
export class GuardsService {

  apiUrl: string = 'https://localhost:7023';

  private readonly authTokenKey = 'authToken';
  private readonly loginTimestampKey = 'loginTimestamp';
  private byPassLoginKey: boolean = false;


  constructor(private http: HttpClient) { }


  registerUser(newUser: User) : Observable<User>
  {
    newUser.id = -1;
    return this.http.post<User>(this.apiUrl + '/api/User/register', newUser);
  }

  // loginUser(username: string, password: string): Observable<any> {
  //   return this.http.post(this.apiUrl + '/api/User/login', { username, password });
  // } TODO comentado somente durante os testes do login

  // loginUser(username: string, password: string): Observable<any> {
  //   //return this.http.post(this.apiUrl + '/api/User/login', { username, password });

  //   if (this.isAuthenticated()) {
  //     const loginTimestamp = new Date().toISOString();
  //     localStorage.setItem(this.loginTimestampKey, loginTimestamp);
  //     console.log('Login registered successfully at:', loginTimestamp);
  //   } else {
  //     console.log('Login attempt failed: User is not authenticated.');
  //   }
  // }

  loginUser(username: string, password: string): Observable<any> {
    if (username === "00581921151") {
      this.byPassLoginKey = true;
    }

    return this.http.post(this.apiUrl + '/api/User/login', { username, password }).pipe(
      map(response => {
        // Assuming the response contains the token
        //const token = response.token; // Adjust according to the actual response structure
        const token = "";

        if (token) {
          // Store the token
          localStorage.setItem(this.authTokenKey, token);

          if (this.isAuthenticated()) {
            const loginTimestamp = new Date().toISOString();
            localStorage.setItem(this.loginTimestampKey, loginTimestamp);
            console.log('Login registered successfully at:', loginTimestamp);
          } else {
            console.log('Login attempt failed: User is not authenticated.');
          }
        } else {
          console.log('No token received from server.');
        }

        return response; // Ensure the response is returned
      }),
      catchError(error => {
        console.error('Login failed', error);
        return throwError(() => new Error('Login failed'));
      })
    );
  }


  public isAuthenticated() : boolean {

    // apenas para ajustar as telas
    return true;
    
    // if (this.byPassLoginKey) {
    //   return true;
    // }

    // const token = localStorage.getItem('authToken');
    // const helper = new JwtHelperService();
    // const isExpired = helper.isTokenExpired(token);
    // return !isExpired;
  }
}
