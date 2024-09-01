import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatSidenav, MatSidenavModule } from '@angular/material/sidenav';
import { MatListModule } from '@angular/material/list';
import { HomePrincipalComponent } from './ui/home-principal/home-principal.component';
import { RouterModule } from '@angular/router';




@NgModule({
  declarations: [HomePrincipalComponent],
  imports: [
    CommonModule,
    RouterModule,
    MatIconModule,
    MatButtonModule,
    MatToolbarModule,
    MatSidenavModule,
    MatListModule,
    MatSidenav,

  ],
  exports: [
    HomePrincipalComponent, // Exporte o componente aqui
  ]
})
export class SharedModule { }


