import { Actions } from '@ngrx/effects';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { AuthUser } from './store/auth.models';
import { Store, StoreModule } from '@ngrx/store';
import { AuthGuard } from './guards/auth.guard';
import { LoginComponent } from './login/login.component';

// import { AuthGuard } from './guards';


// export type User = Omit<UserModel, 'password'>;

export type AuthCredentials = {
  email: string;
  password: string;
};

export type AuthSuccess = {
  accessToken: string;
  user: AuthUser;
};

export type AuthFailure = {
  errorMessage: string;
};


// const routes: Routes = [
//   {
//     path: 'login',
//     loadComponent: () => import('./login/login.component').then(m => m.LoginComponent),
//   },
//   {
//     path: 'app',
//     loadComponent: () => import('../app/app.component').then(m => m.AppComponent),
//   }
// ];

@NgModule({
  declarations: [],
  imports: [
    // RouterModule.forChild(routes),
    StoreModule, LoginComponent

  ],
  providers: [AuthGuard,  Store, Actions, LoginComponent],
})
export class AuthModule { }
