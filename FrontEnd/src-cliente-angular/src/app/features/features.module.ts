import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomePrincipalComponent } from '../shared/ui/home-principal';
import { BemVindoComponent } from './bem-vindo/bem-vindo.component';



@NgModule({
  declarations: [],
  imports: [
    CommonModule,HomePrincipalComponent
  ],
  providers: [HomePrincipalComponent, BemVindoComponent],
})
export class FeaturesModule { }
